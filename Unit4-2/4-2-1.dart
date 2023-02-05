import 'dart:io';

void main() {
  List a = [[], [], []];
  Map b = {};
  for (int i = 0; i < 3; i++) {
    print("Enter the Id : ");
    int id = int.parse(stdin.readLineSync()!);
    print("Enter the Name : ");
    String name = stdin.readLineSync()!;
    print("Enter the Age : ");
    int age = int.parse(stdin.readLineSync()!);
    print("Enter the Salary : ");
    int salary = int.parse(stdin.readLineSync()!);

    Map b = {'Id': id, 'Name': name, 'Age': age, 'Salary': salary};
    a[i].add(b);
  }
  for (int i = 0; i < 3; i++) {
    print(a[i]);
  }
}