import 'dart:io';
void main(){
            print("Enter first no. :");
            int? n1 = int.parse(stdin.readLineSync()!);

            print("Enter Second no. :");
            int? n2 = int.parse(stdin.readLineSync()!);
            for(int i=n1 ; i<=n2 ; i++){

            for(int j=1 ;j<=10 ; j++){

              print("$i * $j = ${i*j}");
            
            }
            
}
}
