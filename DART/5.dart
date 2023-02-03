import 'dart:io';

void main() {
  List a = [
    [3, 6, 9],
    [6, 9, 3],
    [9, 6, 3]
  ];
  int sum = 0, ans = 0;
  print("Press 1 for Sum of Element");
  print("Press 2 for Sum of Row");
  print("Press 3 for Sum of Column");
  print("Press 4 for Sum of Diagonal Element");
  print("Press 5 for Sum of Anti Diagonal Element");
  print("Press 0 for Exit");

  print("Enteer the Number : ");
  int no = int.parse(stdin.readLineSync()!);

  switch (no) {
    case 1:
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          sum = a[i][j];
          ans = ans + sum;
        }
      }
      print("Sum is $ans");
      break;

    case 2:
      for (int i = 0; i < 3; i++) {
        ans = 0;
        for (int j = 0; j < 3; j++) {
          sum = a[i][j];
          ans = ans + sum;
        }
        print("Sum of Row = $ans");
      }
      break;

    case 3:
      for (int i = 0; i < 3; i++) {
        ans = 0;
        for (int j = 0; j < 3; j++) {
          sum = a[j][i];
          ans = ans + sum;
        }
        print("Sum of Colum = $ans");
      }
      break;

    case 4:
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i == j) {
            sum = a[j][i];
            ans = ans + sum;
          }
        }
      }
      print("Diagonal Sum = $ans;");
      break;

    case 5:
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i + j == 2) {
            sum = a[j][i];
            ans = ans + sum;
          }
        }
      }
      print("Anti Diagonal Sum = $ans;");
      break;

    case 0:
      print("Exit");
      break;

    default:
      print("Unvalid Number");
  }
}
