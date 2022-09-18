import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;
import 'dart:math';

void main() {
/*
  // previous lab practise
  num a = 10;
  a=18.5;
  // a="hi";
  print(a);
  num b;
  b = 12.5;
  b=8;
  // b= "hi";
  b = a;
  print(b);
  var a = 10;
  // a = 18.5;
  // a="hi";
  print(a);
  var b;
  b = 12.5;
  b = 8;
  b = "hi";
  // b = a;
  print(b);
  // a = b;
  b = 5;
  a = b;
  print(a);
  */
/*
  // Loops
  // While loops
  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }

  //Do-while loops
  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while (sum < 10);

  // Comparison
  //Its isn't always the case that while loops and do-while loops will give the same result.
  sum = 11;
  while (sum < 10) {
    sum += 4;
  }
  print(sum); // 10
  sum = 11;

  do {
    sum += 4;
  } while (sum < 10);
  print(sum); // 15

  // In do while loop body is always executed atleast once.

  //Break
  sum = 1;
  while (true) {
    sum += 4;
    if (sum > 10) {
      break;
    }
  }

  //For loops

  // C-style
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  //continue;
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  //For-in loops

  const myString = "I Love Rajkot";

  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  // myString.runes is a collection of all the code points in myString.
  // The in keyword tells the for-in loop to iterate over the collection in order, and on each iteration, to assign the current code point to the codePoint variable.

  // String.fromCharCOde convert the code point integer back into a string.

  //For-each
  const myNumbers = [1, 2, 3];

  myNumbers.forEach((number) => print(number));

  // The part inside the foreach parenthesis is a function.
  // --> is arrow syntax that points to the statement that the function runs.

  // same meaning as below:
  myNumbers.forEach((number) {
    print(number);
  });

  //Dart automtically gives number the type that's inside the colection; in this case,int.
  */
/*
  // A random interlude
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('FInally, you got a six!');

  // Random is a class and nextInt is a method that generates a random int between 0 and one less than max value we give.

  */
/*
  //Mini - exercises
  // 1. Create a variable named counter and set it equal to 0. Create a while loop with the condition counter < 10. The loop body should print out “counter is X” (where X is replaced with the value of counter) and then increment counter by 1.

  var counter = 0;
  while (counter < 10) {
    print("counter is ${counter}");
    counter++;
  }

  // 2. Write a for loop starting at 1 and ending with 10 inclusive. Print the square of each number.

  for (var i = 1; i <= 10; i++) {
    print(pow(i, 2));
  }

  //3. Write a for-in loop to iterate over the following colection of numbers. Print the square root of each number.

  const number = [1, 2, 4, 7];

  for (var num in number) {
    print(sqrt(num));
  }

  //4. Repeat Mini-exercise 3 using a forEach loop.

  number.forEach((element) => print(sqrt(element)));
  */
/*
  // Challenges
  
  // Challenge-1: Find the Error
  const firstName = 'Bob'; 
  if(firstName == 'Bob') {
    const lastName = 'Smith';
  } else if (firstName == 'Ray') {
    const lastName = 'Wenderlich';
  }
  // No Error: Code will run fine

  // Challenge-2: Boolean challenge
  print(true && true);                              // true
  print(false || false);                            // false
  print((true && 1 != 2) || (4 > 3 && 100 < 1));    // true
  print(((10 / 2) > 3) && ((10 % 2) == 0));         // true

  // Challenge-3: Next power of two
  var n = 36;
  if(n <= 2){
    print(2);
  }else if(n <= 4){
    print(4);
  }else{
    var temp = 8;

    while(temp < n){
      temp *= 2;
    }
    print(temp);    // 64
  }

  // Challenge-4: Fibonacci
  var index = 19;
  if(index == 1 || index == 2){
    print(1);
  }else{
    var ls1 = 1;
    var ls2 = 1;
    for(int i = 3; i <= index; i++){
      int temp = ls1 + ls2;
      ls1 = ls2;
      ls2 = temp;
    }
    print(ls2);     // 4181
  }

  // Challenge-5: How many times?
  var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
  }
  print(sum);                     // 15
  print("(5 + 1) iterations");    // (5 + 1) iterations

  // Challenge-6: The final countdown
  for(int i = 10; i >= 0; i--)
    print(i);

  // Challenge 7: Print a sequence
  for(var i = 0.0; i <= 1; i += 0.1)
    print(i.toStringAsFixed(1));
  
  */
}
