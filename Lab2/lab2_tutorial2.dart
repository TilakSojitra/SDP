import 'dart:mirrors';

import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import "dart:math";

void main() {
/*

  // Commenting Code

  // Single line comment
  // This is a comment. It is not executed.

  // This is also a commment.
  // over multiple lines.

  /* This is also a comment. Over many...
  many...
  many lines. */

  /* This is a comment.
  /* And inside it is
  another comment. */
  Back to the first. */

  /// I am a documentation comment
  /// at your service.

  /**
   * Me, too!
   */

  print('Hello, Dart!');

*/ 
/*

  // Printing output

  // We can monitor what's happening at a particular point in our code using print.
  print("Hello, Dart Apprentice reader!");

  */
  /*

  // Statements and expressions

  // A statement is a command, something you tell the computer to do.
  print('Hello, Dart Apprentice reader!');

  //complex statement
  // if (someCondition) {
        // code block 
  // }
  */

/*

  // Expressions
  // expression is a value, or is something that can be calculated as a value.

  // Examples
  42
  3 + 2
  'Hello, Dart Apprentice reader!'
  X

 */
/*
  // Arithmetic operations

  // simple operations: Add,Subtract,Multiply,Divide

  // 2 + 6
  // 10 - 2
  // 2 * 4
  // 24 / 3

  // Dart ignores whitespace, so you can remove the spaces surrounding the operator:
  print(2 + 6); //2+6

 */
/*
  // Decimal numbers

  // not every number is whole
  
  // Example: 

  22 / 7
  3.142857142857143
  // Dart gives you the standard decimal answer.

  //Integer Division 
  ~/ :- truncating division operator
  22 ~/ 7
  result:- 3

 */
/*
  // The Euclidean modulo operation

  // % :- Euclidean modulo operator
  28 % 10
  result:- 8
 */
/*
  // Order of operations

  // Using paranthesis we can make it clear to anyone who read the code and parantheses disambiguate the intended order of operations.
  // ((8000 / (5 * 10)) - 32) ~/ (29 % 5)

  // Does this equal 72?.

  print(350 / 5 + 2); // without parenthesis

  print(350 / (5+2)); // with parenthesis

  // Multiplication and division have equal precedence. Addition and subtraction are equal in precedence to each other, but are lower in precedence than multiplication and division. The ~/ and % operators have the same precedence as multiplication and division.

  // We can always use parenthesis to be sure the expression evaluates as we want it to.

 */
 /*
  // Math functions

  // for using math functions we have to do following import.
  // import "dart:math";

  print(sin(45 * pi / 180));
  // 0.7071067811865475
  print(cos(135 * pi / 180));
  // -0.7071067811865475

  // These convert an angle from degrees to radians, and then compute the sine and cosine respectively. Dart provides constant pi.

  print(sqrt(2));
  // 1.4142135623730951

  print(max(5, 10));
  // 10
  print(min(-5, -10));
  // -10

  print(max(sqrt(2), pi / 2));
  // 1.5707963267948966

  //Mini Exercise:- Print the valuie of  1 over the square root of 2 in Dart. Confirm that it equals the sine of 45

  double val = 1 / sqrt(2);
  double sin_45 = sin(pi / 4);
  print(sin(45 * pi / 180));
  print(1 / sqrt(2));

 */
/*
  // Naming data

  //examples of valid and invalid identifiers
  // Valid Identifiers 
    // - firstName
    // - first_name
    // - num1
    // - $result

  // Invalid Identifiers
    // - Var 
    // - first name 
    // - first-name
    // - 1number

  // Keywords 
  // Keywords have a special meaning in the context of a language.

  // list:- 
  abstract continue false new this as default final null throw assert deferred finally operator true async do for part try dynamic get rethrow typedef await else if return var break enum implements set void case export import static while yield catch external in super with class extends is switch const factory library this throw 
  */
  /*
  // Variables
  // This statement declares a variable called number of type int.
  int number = 10;

  // If we want to change the value of a variable, then we can just give it a different value of the same type.  
  int number = 10; 
  number = 15;

  //for storing decimal number 
  double apple = 3.14159;

  // we can do something like this because numbers is objects
  print(10.isEven)
  // true
  print(3.14159.round())
  // 3
  */
  /*
  // Type Safety

  // In Dart once we tell data type of variable to dart then we can not change it's data type.
  int myInteger = 10;
  myInteger = 3.14159; // No, no, no. That's not allowed.

  // data type of 3.14159 is double but we have already defined that myInteger is of type an int, so now we can not change datatype of that  variable.

  // sometimes we can able to assign related types to the same variable.

  num myNumber;
  myNumber = 10; // OK
  myNumber = 3.14159; // OK
  myNumber = "b"; // NO NO NO

  // The num type can be either an int or a double, so the first two assignments work.
  // Solution:- use the dynamic type.
  dynamic myVariable;
  myVariable = 10; // OK
  myVariable = 3.14159; // OK
  myVariable = "t"; // OK

  //But we should avoid this.

 */
/*
  //Type interence

  // Sometimes we don't have to tell type of a variable to Dart. DArt is smart. Dart can still figure out.
  var someNumber = 10;

  // There’s no need to tell Dart that 10 is an integer. Dart th and makes someNumber an int. Type safety still applies, though:

  var someNumber = 10; 
  someNumber = 15; // OK
  someNumber = 3.14159; // No, no, no.
 */
/*
  // Constants
  // Variables whose value you can change are known as mutable data. when we use immutable data there is high possibility of losing tracks of all the places in  our code.

  // To create a constant in Dart
  const myConstant = 10;
  // Dart uses type inference to determine that myConsstant is an int. 

  const myConstant = 10; 
  myConstant = 0; // Not allowed.
  // Error:- Constant variables can't be assigned a value.
  // After declaring constant we can not change its data.

  //final constants

  // we want a constant in our program but we dont know what its value at compile time. we'll only know the value after the program starts running. This kind of constant is known as a runtime constant.
  // if we can't create a const variable because we dont know its value at compile time, then we must use the final keyword to make it a runtime constant.

  final hoursSinceMidnight = DateTime.now().hour;

  // DateTime.now() is a Dart function that tells you the current date and time when the code is run.

  // If we try to change the final constant after it’s already been set
  hoursSinceMidnight = 0;
  // Error: The final variable 'hoursSinceMidnight' can only be set once.
 */
/*
  // Using meaningful names
  // We should always choose meaningful names for our variables and constants.

  // Examples of good names:- 
  personAge
  numberOfPeople
  gradePointAverage

  // Examples of bad names:- 
  a
  temp 
  average

  // In Dart it's standart to use lowerCamelCase for variable and constant names.
  Rules:- 
  1. Start with a lowercase letter.
  2. If the name is made up of multiple words, join them together and start every word after the first one with an uppercase letter.
  3. Treat abbreviations like words (for example, sourceUrl and urlDescription).
 */
/*
  // Mini-exercises

  /// Mini-exercise 1
  ///
  /// Declare a constant of type `int` called `myAge` and set it to your age.
  const myAge = 19;
  print(myAge);

  /// Mini-exercise 2
  ///
  /// Declare a variable of type `double` called `averageAge`. Initially, set
  /// the variable to your own age. Then, set it to the average of your age and 
  /// your best friend's age.
  double averageAge = 98;
  averageAge = (98 + 27) / 2;
  print(averageAge);

  /// Mini-exercise 3
  ///
  /// Create a constant called `testNumber` and initialize it with whatever
  /// integer you'd like. Next, create another constant called `evenOdd` and
  /// set it equal to `testNumber` modulo `2`. Now change `testNumber` to
  /// various numbers. What do you notice about `evenOdd`?
  const testNumber = 42;
  const evenOdd = testNumber % 2;
  print(evenOdd);
  // `evenOdd` is 0 if `testNumber` is even.
  // `evenOdd` is 1 if `testNumber` is odd.
 */
/*
  // Increment and decrement
  var counter = 0;
  counter += 1;
  // counter = 1;
  counter -= 1;
  // counter = 0;

  // The += and -= operators are similar to the assignment operator (=), except they also perform an addition or subtraction. They take the current value of the variable, add or subtract the given value, and assign the result back to the variable.

  // the code above is shorthand for the following:
  var counter = 0; 
  counter = counter + 1; counter = counter - 1;

  // If we can need to increment or decerement by 1, then we can use the ++ or -- operators.
  var counter = 0; 
  counter++; // 1
  counter--; // 0

  // The *= and /= operators perform similar operations for multiplication and division, respectively:
  double myValue = 10;
  myValue *= 3; // same as myValue = myValue * 3;
  // myValue = 30.0;
  myValue /= 2; // same as myValue = myValue / 2;
  // myValue = 15.0;

  // Division produces a result with a type of double, so myValue could not be an int.
 */
/*
  //Challenges

  // Challenge 1: Variables
  // Declare a constant int called myAge and set it equal to your age. Also declare an int variable called dogs and set that equal to the number of dogs you own. Then imagine you bought a new puppy and increment the dogs variable by one.

  const myAge = 42;
  var dogs = 101;
  dogs++;
  print(myAge);
  print(dogs);

  // Challenge 2: Make it compile
  /// Given the following code:
  /// age = 16;
  /// print(age);
  /// age = 30;
  /// print(age);
  /// ```
  ///
  /// Modify the first line so that it compiles. Did you use `var`, `int`,
  /// `final` or `const`?
  var age = 16;
  print(age);
  age = 30;
  print(age);
  // Using `int` rather than `var` would also have made it compile. However,
  // the general practice is to use `var` if the type is known and obvious from
  // from the value.

  /// Challenge 3: Compute the answer
  /// Consider the following code:
  
  /// const x = 46;
  /// const y = 10;
  /// Work out what answer equals when you add the following lines of code:
  /// const answer1 = (x * 100) + y;
  /// const answer2 = (x * 100) + (y * 100);
  /// const answer3 = (x * 100) + (y / 10);
  /// ```
  const x = 46;
  const y = 10;

  // 1
  const answer1 = (x * 100) + y;
  print(answer1); // 4610

  // 2
  const answer2 = (x * 100) + (y * 100);
  print(answer2); // 5600

  // 3
  const answer3 = (x * 100) + (y / 10);
  print(answer3); // 4601.0

  /// Challenge 4: Average rating
  
  /// Declare three constants called `rating1`, `rating2` and `rating3` of
  /// type `double` and assign each a value. Calculate the average of the
  /// three and store the result in a constant named `averageRating`.
  const rating1 = 7.9;
  const rating2 = 6.5;
  const rating3 = 10.0;
  const averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  /// Challenge 5: Quadratic equations

  /// A quadratic equation is something of the form `a⋅x² + b⋅x + c = 0`.
  /// The values of `x` which satisfy this can be solved by using the equation
  /// `x = (-b ± sqrt(b² - 4⋅a⋅c)) / (2⋅a)`.
  /// Declare three constants named `a`, `b` and `c` of type `double`. Then
  /// calculate the two values for `x` using the equation above (noting that
  /// the `±` means plus or minus, so one value of `x` for each). Store the
  /// results in constants called `root1` and `root2` of type `double`.
  const a = 2.0;
  const b = 3.0;
  const c = 1.0;
  final root1 = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
  final root2 = (-b - sqrt(b * b - 4 * a * c)) / (2 * a);
  print(root1);
  print(root2);
 */
}
