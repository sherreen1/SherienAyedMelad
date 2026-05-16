import 'dart:io';

Set<String> students = {};
Map<String, List<int>> studentCourses = {};

void addStudent(String name) {
  students.add(name);
}

void printStudents(List<String> list, int index) {
  if (index >= list.length) return;
  print(list[index]);
  printStudents(list, index + 1);
}

void addCourse(String student, String course, [int grade = 0]) {
  if (!studentCourses.containsKey(student)) {
    studentCourses[student] = [];
  }

  studentCourses[student]!.add(grade);
}

double averageGrade(String student) {
  var grades = studentCourses[student];

  if (grades == null || grades.isEmpty) {
    return 0;
  }

  return grades.reduce((a, b) => a + b) / grades.length;
}

void main() {

  addStudent("Ali");
  addStudent("Omar");
  addStudent("Sara");

  print("Students (forEach lambda):");
  students.forEach((s) => print(s));

  print("\nRecursive Print:");
  printStudents(students.toList(), 0);

  Set<String> newStudents = {"Mona", "Khaled"};
  students = {...students, ...newStudents};

  addCourse("Sara", "Math", 90);
  addCourse("Ali", "Physics", 80);
  addCourse("Omar", "Math", 70);

  print("\nAverage Grades:");

  studentCourses.forEach((student, grades) {
    print("$student avg = ${averageGrade(student)}");
  });
}