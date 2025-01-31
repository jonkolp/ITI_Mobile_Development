// void greeting(){
//    print('Hello!');
// }

// double sum(double x,double y){
//   return x+y;
// }
//default Parameters
//   void skruLogin([String accountName='Guest',String  time='now']){
//     print('You are Ready to play as a/an $accountName');
//   }

//    void formData(String userName,[String phoneNumber='0107363745']){

//      print('submited form successfully');

//    }

//  void formData([String phoneNumber='0107363745'],String userName){

//      print('submited form successfully');

//    }

// named Parameter

//  void payment({required double? amount,required int? pinNumber}){
//      print('you pay with amount $amount');

//  }

// arrow function

// int add(int x,int y){
//   return x+y;
// }

// int add(int x,int y)=> x+y;

// // higher order function(take or return another function)
// // function referance not function call
// // callback function

// void calculate(int x,int y,Function operation){

//   print(operation(x,y));
// }

// Function counter(){
//   int count=1;
//   //clouser
//   return (){

//     count++ ;
//     return count;
//   };
// }
//5=>5*4*3*2*1
int factorial(int n, int c) {
  print('$c:$n');
  if (n <= 1) return 1;
  int x = n * factorial(n - 1, c + 1);
  print('$c:$x');
  return x;
}
// binary search Tree
void main() {
  print(factorial(5,1));
  Map<String, dynamic> stdData = {
    'firstName': 'Ahmed',
    'age': 22,
    'degree': 70,
    'hobbies': ['reading']
  };

  void fun1(String k, dynamic v) {
    print('$k:$v');
  }
  //  //callback function
  // // stdData.forEach((key, value) => print('$key:$value')); //arrow function
  // stdData.forEach(fun1); // function referance
  // stdData.forEach((key, value) {
  //   print('$key:$value');
  // }); //anonymous function
  // stdData.forEach(void abc(key, value) {
  //   return value;
  // }); //error
  // print(stdData);
  // List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  // var newList = numbers.map((element) => element * element);

  // print(newList);
  // print(numbers);

//  Functions

//   payment(amount:1200.56,pinNumber:1234);
  // payment(amount:1200.56);
//   formData('user123','03274376');
//   formData('078354265');

//   skruLogin('ali');
//   skruLogin();

//   greeting();
//   double result=sum(3.5,67.1);

//   print(result);

//   returnType functionName(parameters){

//     //function body
//   }

//   var increse=counter();

//   print(increse());
//   print(increse());
//   print(increse());
//    print(add(2,4));

  // calculate(2,5,add);
}
//entry point
