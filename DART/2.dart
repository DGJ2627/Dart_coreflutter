import 'dart:io';

void main() {
  List g = [];
  int n;

  print("Enter the size  : ");

  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("Enter element $i :");
    int no = int.parse(stdin.readLineSync()!);
    g.add(no);
  }

  int m = g[0];

  g.forEach((e) {
    if (e > m) m = e;
  });
  print("Largest Element Is $m");
}
