
//1
class Animal{
  void makeSound(){
    print("Animal makes a sound");
  }
}
class Dog extends Animal{
  void makeSound(){
    print("Dog barks");
  }
}

class Cat extends Animal{
  void makeSound(){
    print("Cat meows");
  }
}
//2
class Car {
  String brand;
  String model;
  int year;
  Car(this.brand, this.model, this.year);
  Car.oldcar(this.brand, this.model):year=2000;

  void display() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

//3
class Student{
  String name;
  double grade;
  Student(this.name, this.grade);
  void showInfo(){
    print("$name has a grade of $grade");
  }
}

//4
class Book{
  String title;
  String author;
  int pages;
  Book(this.title, this.author, this.pages);
  void Bookinfo(){
    print('Title: $title, Author: $author, Pages: $pages');
  }
}
//5
class Temperature{
  double _celsius;
  Temperature(this._celsius);

  void toFahrenheit(){
    double fahrenheit = (_celsius * 1.8) + 32;
    print('Temperature in Fahrenheit: $fahrenheit');
  }

  void toKelvin(){
    double kelvin = _celsius + 273.15;
    print('Temperature in Kelvin: $kelvin');
  }
  
}

//6
class Rectangle{
  double _width;
  double _height;
  Rectangle(this._width, this._height);

  double get width => this._width;
  double get height => this._height;
  double get area => width * height;
  double get perimeter => 2 * (width + height);

  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print('Width must be positive.');
    }
  }
  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print('Height must be positive.');
    }
  }
  void display() {
    if (width<0) {
      print('width is set to 1');
      width = 1;
    }
    print('Width: $width, Height: $height, Area: $area, Perimeter: $perimeter');
  }
}
//7
class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }
  double subtract(double num1, double num2) {
    return num1 - num2;
  }
  double multiply(double num1, double num2) {
    return num1 * num2;
  }
  double divide(double num1, double num2) {
    return num1 / num2;
  }
  void calculate(double x,double y,Function operation){
   print(operation(x,y));
  }
}

//8
class Movie {
  String title;
  String director;
  String rating;
  Movie(this.title, this.director, [this.rating = 'Not Rated']);
  void showDetails() {
    print('Title: $title, Director: $director, Rating: $rating');
  }
}

//9
class SmartDevice {
  String brand;
  String model;
  SmartDevice(this.brand, this.model);
  void showDetails() {
    print('Brand: $brand, Model: $model');
  }
}

class Smartphone extends SmartDevice {
  String os;
  Smartphone(String brand, String model, this.os) : super(brand, model);
  void showDetails() {
    super.showDetails();
    print('OS: $os');
  }
}

class Laptop extends SmartDevice {
  String ram;
  Laptop(String brand, String model, this.ram) : super(brand, model);
  void showDetails() {
    super.showDetails();
    print('RAM: $ram');
  }
}
void main(){  
  print("Q1");
  var dog = Dog();
  var cat = Cat();
  dog.makeSound();
  cat.makeSound();


  print("Q2");
  var car1 = Car('BMW', 'M1', 2022);
  var car2 = Car.oldcar('Hynadai', 'Verna');
  car1.display();
  car2.display();

  print("Q3");
  List<Student> students = [
    Student('Youssef', 3.5),
    Student('Ahmed', 4.0),
    Student('Hany', 3.8),
  ];
  students.forEach((student) => student.showInfo());

  print("Q4");
  Book book1 = Book('No Longer Human', 'Dazai Osmsa', 200);
  Book book2 = Book('The Slient Paient', 'Alex Michaelides', 400);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 300);
  book1.Bookinfo();
  book2.Bookinfo();
  book3.Bookinfo();

  print("Q5");

  Temperature temperature = Temperature(25);
  temperature.toFahrenheit();
  temperature.toKelvin();

  print("Q6");
  Rectangle rectangle = Rectangle(5, 10);
  rectangle.display();
  rectangle.width = -20;

  print("Q7");
  Calculator calculator = Calculator();
  calculator.calculate(10, 5, calculator.add);
  calculator.calculate(10, 5, calculator.subtract);
  calculator.calculate(10, 5, calculator.multiply);
  calculator.calculate(10, 5, calculator.divide); 

  print("Q8");
  List<Movie> movies = [
    Movie('Pulp Fiction', 'Quentin Tarantino','5'),
    Movie('The Godfather', 'Francis Ford Coppola','4.3'),
    Movie('The Dark Knight', 'Christopher Nolan'),
  ];

  print("All movies:");
  movies.forEach((movie) => movie.showDetails());


  print("Q9");
  SmartDevice smartphone = Smartphone('Samsung', 'Galaxy S20', 'Android 11');
  smartphone.showDetails();
  Laptop laptop = Laptop('Dell', 'XPS 15', '16GB RAM');
  laptop.showDetails();

}
