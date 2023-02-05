import 'dart:io';

void main() {
  stdout.write("Enter N :");
  int n = int.parse(stdin.readLineSync()!);
  int i;
  for (i = 0; i < n; i++) {
    stdout.write("Enter element i : $i = ");
    int n1 = int.parse(stdin.readLineSync()!);
  }

  List l = List.generate(n, (i) => ("${i + 1}Hello"));

  print(l);
}
