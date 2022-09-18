class User {
  String? name;
  int? id;
}

// Initializing non-nullable fields

// Using  initializers
// class User {
//   String name = "Tilak";
// }

// Using initializing formals
// class User {
//   User(this.name);
//   String name;
// }

// Using an initializer list
// class User {
//   User(String name)
//   :_name = name;
//   String _name;
// }

// Using default parameter values
// class User {
//   User([this.name = 'Tilak']);
//   String name;
// }

// Required named parameters
class User1 {
  User1({required this.name});
  String name;
}

// No promotion for non-local variables
class TextWidget {
  String? text;
  // bool isLong() {
  //   if (text == null) {
  //     return false;
  //   }
  //   // return text.length > 100;
  //   // error - The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  //   return text!.length > 100; // Solution-1
  // }
  // Solution-2
  bool isLong() {
    final text = this.text; // shadowing
    if (text == null) {
      return false;
    }
    return text.length > 100;
  }
}

// The late keyword
class User2 {
  User2(this.name);

  final String name;
  // final int _secretNumber = _calculateSecret();
  // error - The instance member '_calculateSecret' can't be accessed in an initializer.

  // Solution:-
  late final int _secretNumber = _calculateSecret();

  int _calculateSecret() {
    return name.length + 42;
  }
}
// We have this non-nullable field named _secretNumber. We want to initialize it based on the return value from a complex algorithm in the _calculateSecret instance method. We have a problem though, because Dart doesn't let we access instance methods during initialization.

// Dangers of being laate
class User3 {
  late String name;
}
// dart doesn't complain bcz using late means that we're promising dart that we'ill initialize the field before it's ever used. 

void main() {
  // int postalCOde = null;
  // Error:- A value of type 'Null' can't be assigned to a variable of type 'int'.

  // We can easily tell the type is nullable because it ends with a question mark (?), which is like saying, “Maybe you’ve got the data you want or maybe you’ve got null.
  int? myInt = null;
  double? myDouble = null;
  bool? myBool = null;
  String? myString = null;

  //Handling nullable types
  //String? name;
  // print(name.length);
  // Error: Property 'length' cannot be accessed on 'String?' because it is potentially null.

  // Type promotion
  String? name;
  name = "Tilak";
  // print(name.length); // 5

  // FLow analysis
  bool isPositive(int? anInteger) {
    if (anInteger == null) {
      return false;
    }
    return !anInteger.isNegative;
  }
  // Dart promoted anINteger to its non-nullable form,that is, to  int instead of int?.

  // Null-aware operators
  // If-null operator(??)
  String? message;
  final text = message ?? 'Error';
  // Since message is null, >> will set tect equal to the right-hand value:'Error'.
  // Using ?? ensures that text can never be null, thus Dart infers the variable type of text to be String and not String?.
  // print(text); // Error

  // Null-aware assignment operator(??=)

  double? fontSize;
  // fontSize = 30.0;
  fontSize = fontSize ?? 20.0;
  // print(fontSize); // 20.0

  // Null-aware access operator(?.)
  int? age;
  // print(age?.isNegative); // null
  // print(age?.toDouble()); // null

  //Null assertion operator(!)
  String? myNullableString;
  // String nonNUllableString = myNullableString;
  // A value of type 'String?' can't be assigned to a variable of type 'String'.
  String nonNUllableString = myNullableString!;

  bool? isBeautiful(String? item) {
    if (item == 'flower') {
      return true;
    } else if (item == 'garbage') {
      return false;
    }
    return null;
  }

  // bool flowerIsBeautiful = isBeautiful('flower');
  //A value of type 'bool?' can't be assigned to a v ariable of type bool
  bool flowerIsBeautiful = isBeautiful('flower')!;

  //Note:- Using the assertion operator will crash your aapp with a runtime error if the value actuallu does rturn out to be null, so don't use the assertion operator unless you can guarantee that the variable isn't null.

  // Null-aware cascade operator(?..)
  User? user;
  user
    ?..name = "Tilak"
    ..id = 133;

  // Null-aware idex operator
  List<int>? myList = [1, 2, 3];
  myList = null;
  int? myItem = myList?[2];
  // print(myItem); // null

  // Nullable instance variable
  // final user1 = User1(name: null);
  // The argument type 'Null' can't be assigned to th e parameter type 'String'

  // Dangers of being late
  final user2 = User3(); 
  print(user2.name);
  // Error - LateInitializationError: Field 'name' has not be en initialized.
}
