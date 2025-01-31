void main() {
  print("Q1");
  //1
  List numbers = [5, 10, 15, 20, 25];
  numbers.add(30);
  numbers.removeAt(0);
  print("after modifaction: $numbers");

  List greaterThan15 = numbers.where((number) => number > 15).toList();
  print("greater than 15: $greaterThan15");

  numbers = numbers.map((number) => number * 2).toList();
  print("multiplying all numbers by 2: $numbers");
  
  print("Q2");
  //2
  Set set1 = {1, 2, 3, 4, 5};
  Set set2 = {3, 4, 5, 6, 7};
  Set union = set1.union(set2);
  print("Union: $union");

  Set intersection = set1.intersection(set2);
  print("Intersection: $intersection");

  Set difference = set1.difference(set2);
  print("Difference: $difference");
  
  print("Q3");
  //3
  Map products ={
    "Laptop": 1500, 
    "Phone": 800, 
    "Tablet": 400};
  print("products: $products");
  products["Smartwatch"] = 200;
  products["Phone"] = 850;
  products.remove("Tablet");

  print("Updated products: $products");

  products.forEach((product, price) {
    if (price > 500) {
      print(product);
    }
  });
  
  print("Q4");
  //4
  String? name;
  name ??= "Guest";
  print("Name: $name");
  
  
  print("Q5");
  //5
  List numbers1 = [1, null, 2, null, 3];
  print("list: $numbers1");
  numbers1.removeWhere((element) => element == null);
  print("Updated list: $numbers1");
  
  print("Q6");
  //6
  int? value;
  value ??= 100;
  print("Value: $value");
  
  print("Q7");
  //7
  int x = -5;

  if (x > 0) {
    print("$x is positive.");
  } else if (x < 0) {
    print("$x is negative.");
  } else {
    print("$x is zero.");
  }
  
  print("Q8");
  //8
  String role = "editor";

  switch (role) {
    case "admin":
      print("Admin Access");
      break;
    case "editor":
      print("Editor Access");
      break;
    case "viewer":
      print("Viewer Access");
      break;
    default:
      print("No Access");
  }
  
  print("Q9");
  //9
  List numbers3 = [1, 2, 3, 4, 5];

  for (int number in numbers3) {
    print("Square of $number: ${number * number}");
  }
  
  print("Q10");
  //10
  int i = 10;

  while (i >= 1) {
    print(i);
    i--;
  }
  
  print("Q11");
  //11
  int j = 1;

  do {
    print(j);
    j++;
  } while (j <= 5);
  
  
}