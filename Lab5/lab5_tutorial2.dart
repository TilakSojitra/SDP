//Advanced Classes

//Extending classes
// Creating your first subclass
enum Grade { A, B, C, D, F }

// Creating similar classes
class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';
  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);
  var grades = <Grade>[];

  // Overriding parent methods
  @override
  String get fullName => '$surname, $givenName';
}

// Calling super from an overridden method
class SomeParent {
  void doSomeWork() {
    print('parent working');
  }
}

class SomeChild extends SomeParent {
  @override
  void doSomeWork() {
    super.doSomeWork();
    print('child doing some other work');
  }
}

// Multi-level hiearchy
class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

//Sibling classes
class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

void main() {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);

  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);

  final child = SomeChild();
  child.doSomeWork();

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');

  // Type inference in a mixed list
  final students = [jane, jessie, marty];

  // Checking an object’s type at runtime
  print(jessie is Object); //true
  print(jessie is Person); //true
  print(jessie is Student); //true
  print(jessie is SchoolBandMember); //true 
  print(jessie is! StudentAthlete); //true
}
