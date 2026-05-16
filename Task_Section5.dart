class Person {

  String name;
  int _age;

  static String universityName = "Sohag University";

  Person(this.name, this._age);

  int get age => _age;

  set age(int value) {
    _age = value;
  }
}

class Employee extends Person {

  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void showInfo() {
    print("University: ${Person.universityName}");
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}

abstract class Skills {

  void programming();
  void communication();
}

class Developer extends Employee implements Skills {

  Developer(String name, int age, double salary)
      : super(name, age, salary);

  @override
  void programming() {
    print("Programming skill: Backend developer");
  }

  @override
  void communication() {
    print("Communication skill: Good team communication");
  }
}

void main() {

  Developer dev = Developer("Sherien", 22, 6000);

  dev.showInfo();
  dev.programming();
  dev.communication();
}