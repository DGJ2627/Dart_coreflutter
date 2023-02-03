import 'dart:io';

void main() {
  int i, j;
  List Gautam = [
    [10, 20, 30],
    [40, 50, 60],
    [70, 80, 90]
  ];
  List jethava = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  for (i = 0; i < 3; i++) {
    for (j = 0; j < 3; j++) {
      stdout.write("${Gautam[i][j] + jethava[i][j]} ");
    }
    stdout.write("\n");
  }
}
