import 'dart:io';
    void main() {

    print("Enter a number :");
    
    int? g = int.parse(stdin.readLineSync()!);
    
    print("Cube : ${g * g * g}");
}
