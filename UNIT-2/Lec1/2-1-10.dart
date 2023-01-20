import 'dart:io';
void main() {
      print("Enter element : ");
    int? N = int.parse(stdin.readLineSync()!);
      

      if (N == 0) {
        print("The nber both are same :");
      } 
      else if (N % 2 == 0) {
        print(" Even :");
      } 
      else {
        print(" Odd :");
      }


}