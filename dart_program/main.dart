import 'dart:io';

void main() {
  print('Enter The height: ');
  int? a = int.parse(stdin.readLineSync()!);
  print('Enter The Width: ');
  int? s = int.parse(stdin.readLineSync()!);
  //int resulst = trinangle(a,s);
  //print(resulst);
  //print('void function Exmaple');
  Area(a, s);
}

//int trinangle(int height,int width)=> height*width; 
void Area(int height,int width){
  var result = height*width;
  var r = result%2==0;
  // var o = result%2!=0;
  
var re= r?('Answer is Even number'):('Answer is Odd number');
print(re);


}
