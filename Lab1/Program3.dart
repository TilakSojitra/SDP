import 'dart:io';

void main(){

  //stdout.write = "print only statement"
  stdout.write("Without new line ");

  //print = "print statement + new line(\n)"
  print("print Hello!");
  print(calculate());
}

//Function
int calculate(){
  return 7*8;
}