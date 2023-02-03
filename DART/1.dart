import 'dart:io';

void main() {
  dynamic g, i, n, ans;
  List a = [];

  print("Enter the size of list :");
  n = int.parse(stdin.readLineSync()!);

  for (i = 0; i < n; i++) {
    print("Enter Element $i :");
    g = int.parse(stdin.readLineSync()!);
    a.add(g);
  }

  ans = a.map((e) => (e < 0) ? "Negative $e" : "Postive $e");

  print("Negative values : $ans");
}