import 'dart:math';

abstract class Shape{
  double area();
  String describe();
}

class Circle extends Shape {
  double r;

  Circle(this.r);

  @override
  double area() {
    return pi*r*r;
  }

  @override
  String describe() {
    return "r = $r";
  }
}

class Rectangle extends Shape {
  double a;
  double b;

  Rectangle(this.a, this.b);

  @override
  double area() {
    return a*b;
  }

  @override
  String describe() {
    return "a = $a, b = $b";
  }
}

class Triangle extends Shape {
  double a;
  double b;

  Triangle(this.a, this.b);

  @override
  double area() {
    return 0.5*a*b;
  }

  @override
  String describe() {
    return "a = $a, b = $b";
  }
}

void main(){

  List<Shape> shapes = [
    Circle(2),
    Rectangle(3, 4),
    Triangle(4, 5)
  ];

  var result = shapes.map((shape) => "Area of ${shape.describe()} is ${shape.area()}");
  print(result);
}