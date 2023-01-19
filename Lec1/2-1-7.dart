import 'dart:io';
void main(){

    print("Enter your First name?");
    String? first = stdin.readLineSync();

    print("Enter your Last name?");
    String? last = stdin.readLineSync();
    
    print("Hello : $first $last");
}