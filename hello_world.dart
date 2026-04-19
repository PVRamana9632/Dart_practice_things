import 'dart:core';
import 'dart:ffi';

int x = 2;
var y = 3; //type inferred means it take by its own

dynamic z = 4; //dynamic means it can take any type of value

//z = "Hello"; // but this giving error i don't know why

//if you never intend to change the value
final email = "ramana@gmail.com";
//above we have the data which can't be changed

final String name = "ramana@gmail.com";

const pi = 3.14;
//const is a compile time constant which means it can't be changed and it must be initialized at the time of declaration
//declaration and intialization need to be done at the same time

void printValues() {
  //print(x, y, z, email, name, pi);
  //above can't be done like in python because in dart we can't print multiple values at once
  print(x);
  print(y);
  print(z);
  print(email);
  print(name);
  //or else we need to use the string interpolation
  //string concatenation
  print("x: $x, y: $y, z: $z, email: $email, name: $name, pi: $pi");
}

int size = 10;
double price = 19.99;

//you can also declare a var as a num for both int and double
//num count = 5;
//num += 2.5; //count is now 7.5
//print(count);
//with flutter dart sdk above thing is not working

bool isActive = true;
bool isLoggedIn = false;

void printBooleans() {
  print("isActive: $isActive, isLoggedIn: $isLoggedIn");
}

var name1 = "ramana";
var name2 = "krishna";

String fullName = "$name1 $name2"; //string interpolation

String uppercase = fullName.toUpperCase();

//operators
// In dart we have +,-,*,/,%,

int num1 = 10;
int num2 = 3;

num sum = num1 + num2; //13
num difference = num1 - num2; //7
num product = num1 * num2; //30
num quotient = num1 / num2; //3.3333333333333335
num remainder = num1 % num2; //1

// Increment and decrement operators
// ++ and --

var num0 = num2++; // it is post increment hence num0 is 3
// after the above line num2 becomes 4

// Logical operators
// ==, !=, >, <, >=, <=

//if else statment
//create a if else with salary of the persons

int salary = 50000;
void ifelsestatment() {
  if (salary < 25000) {
    print("he get less salary $salary");
  } else if (salary == 50000) {
    print("salary is equal to $salary");
  } else {
    print("salary is greater than $salary");
  }
}

//switch cases a simple one
enum Fruits { apple, banana, mango }

void SwitchCases() {
  Fruits myFruits = Fruits.apple;

  switch (myFruits) {
    case Fruits.apple:
      print("Apple");
      break;
    case Fruits.banana:
      print("Banana");
      break;
    case Fruits.mango:
      print("Mango");
      break;
  }
}

void main() {
  //print("Hello World");
  //printValues();
  //printBooleans();
  //print("fullname : $fullName, name in uppercase : $uppercase");
  //print(num0);
  //print("num 0: $num0 , num 1 : $num1, num 2 : $num2");
  //print("sum : $sum, substracte: $difference, multiplication: $product,division: $quotient , reminder: $remainder",);
  //ifelsestatment();
  SwitchCases();
}
