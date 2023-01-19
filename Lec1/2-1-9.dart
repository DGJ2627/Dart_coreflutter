import 'dart:io';
void main() {
  double n1 , n2 , ans ;

  
  print("Enter number: ");
  n1 = double.parse(stdin.readLineSync()!);
  
  print("Enter number: ");
  n2 = double.parse(stdin.readLineSync()!);

  print("Enter 1 for Addition       : ");
  print("Enter 2 for Subtraction    : ");
  print("Enter 3 for Multiplication : ");
  print("Enter 4 for moduls         :"); 
  print("Enter 5 for Division       : ");
  print("Enter 6 for Exit           : ");
 
 int? n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      ans = n1 + n2;
      print("Addition : $n1 + $n2 = $ans");
      break;
    case 2:
      ans = n1 - n2;
        print("Subtraction : $n1 - $n2 = $ans");
      break;
    case 3:
      ans = n1 * n2;
        print("Multiplication : $n1 * $n2 = $ans");
      break;
    case 4:
      ans = n1 * n2;
      print ("moduls : $n1 % $n2 = $ans ");
      break;
    case 5:
      ans = n1 / n2;
        print("Divison : $n1 / $n2 = $ans");
      break;

    default:
      print("Invalid input");
      return;
  }
}