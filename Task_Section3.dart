import 'dart:io';

double calculateAverage(List<int> grades) {
  int sum = grades.reduce((a, b) => a + b);
  return sum / grades.length;
}

String getLetterGrade(double avg) {
  if (avg >= 90) return "A";
  if (avg >= 80) return "B";
  if (avg >= 70) return "C";
  return "F";
}

void main() {
  List<String> students = [];
  List<List<int>> allGrades = [];

  print("Enter number of students:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("Enter student name:");
    String name = stdin.readLineSync()!;
    students.add(name);

    print("Enter number of subjects:");
    int subjects = int.parse(stdin.readLineSync()!);

    List<int> grades = [];

    for (int j = 0; j < subjects; j++) {
      print("Enter grade for subject ${j + 1}:");
      grades.add(int.parse(stdin.readLineSync()!));
    }

    allGrades.add(grades);
  }

  while (true) {
    print("\n1.Show All Results");
    print("2.Search Student");
    print("3.Exit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {

      case 1:
        for (int i = 0; i < students.length; i++) {

          double avg = calculateAverage(allGrades[i]);
          String grade = getLetterGrade(avg);

          print("${students[i].toUpperCase()} | Avg: ${avg.toStringAsFixed(2)} | Grade: $grade");
        }
        break;

      case 2:
        print("Enter student name:");
        String search = stdin.readLineSync()!;

        int index = students.indexWhere(
            (s) => s.toLowerCase() == search.toLowerCase());

        if (index == -1) {
          print("Student not found");
        } else {
          double avg = calculateAverage(allGrades[index]);
          print("Average: ${avg.round()}");
        }

        break;

      case 3:
        print("Program ended");
        return;

      default:
        print("Invalid option");
    }
  }
}