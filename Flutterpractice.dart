class Student {
  String name;
  int age;
  String gender;

  Student(this.name, this.age, this.gender);

  void greet() {
    print("Hi,I'm $name");
  }

  void checkgender() {
    print("My Gender, $gender");
  }
}

void main() {
  var s1 = Student("Hani", 21, "female");
  s1.greet();
  s1.checkgender();
}
