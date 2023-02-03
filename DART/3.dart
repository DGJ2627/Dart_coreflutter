import 'dart:io';

void main() {
  List a = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  print("Press 1 for Insert Element");
  print("Press 2 for Delete Element");
  print("Press 3 for Update Element");
  print("Press 4 for View Element");
  int n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      print("Enter the Element : ");
      int e = int.parse(stdin.readLineSync()!);
      a.add(e);
      print(a);
      break;

    case 2:
      a.remove(a);
      print("List clear $a");
      break;

    case 3:
      a.replaceRange(3, 6, [10]);
      print(a);
      break;

    case 4:
      print(a);
      break;

    default:
      print("Unvalid Number");
  }
}
