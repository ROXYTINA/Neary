class Student {
  String name;
  double? gpa;
  int year;

  // Normal constructor
  Student(this.name, this.gpa, this.year);


  // Method using null-aware operator
  String status() {
    return 'GPA: ${gpa?.toString() ?? "Not Available"}';
  }
}

void main() {
  var s1 = Student("Alice", 3.8, 2);
  var s2 = Student("Bob", null, 3);

  print("${s1.name} -> ${s1.status()}");
  print("${s2.name} -> ${s2.status()}");
}