// class BankAccount {
//   String banckHolderName;
//   // private from file level
//   double _balance;
// //  constructor=>call by default
//   BankAccount(this.banckHolderName, this._balance);

//   void deposite(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//       print('Deposite $amount ,new balance is $_balance');
//     }
//   }

//   void withdraw(double amount) {
//     if (amount > _balance) {
//       print('Insufficiant amount');
//     } else {
// //       _balance -= amount;
// //       print('withdraw $amount ,new balance is $_balance');
// //     }
// //   }
// // }
// class Person {
//   String name;
//   int age;
//   Person(this.name, this.age);

//   void printInfo() {
//     print('hello i am $name and my age is $age');
//   }
// }

// class Employee extends Person {
//   double salary;

//   Employee(String empName, int empAge, this.salary) : super(empName, empAge);
// }
// // act as interface
// abstract class Payment {
//   void pay(double amount);
// }

// class CreditCard implements Payment {
//   void pay(double amount) {
//     print('pay $amount using creditCard');
//   }
// }

// class Paypal  implements Payment {
//   void pay(double amount) {
//     print('pay $amount using Paypal');
//   }
// }

// mixin Flyable {
//   void fly() {
//     print('I can Fly');
//   }
// }
// mixin Swimmable {
//   void swim() {
//     print('I can swim');
//   }
// }

// class Bird {
//   String name;
//   int age;
//   Bird(this.name, this.age);
// }

// class Duck extends Bird with Swimmable {
//   Duck(String n, int g) : super(n, g);
// }
// syncronouns
// asyncronouns Futures

// Futures (Pending,completed)
// async,await
import 'dart:async';

Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'userName:Ali';
  });
}

void main() async {
  var data = await fetchUserData();
  print(data);

  // Duck d1 = Duck('duck1', 3);
  // d1.swim();
  // Payment p1 = Payment();
  // Payment payment1 = CreditCard();
  // Payment payment2 = Paypal();

  // payment1.pay(2000);
  // payment2.pay(2000);

  // object/instance
  // BankAccount account1 = BankAccount('ahmed', 12000);
  // BankAccount account2 = BankAccount('ramy', 20000);
  // account1._balance += 2000;
  // // account2.withdraw(2000);
  // print(account1._balance);
  // account2.deposite(5000);
  // Employee emp1 = Employee('ali', 32, 20000);
  // emp1.printInfo();
}
