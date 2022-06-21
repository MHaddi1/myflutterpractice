import 'dart:io';

void main() {
  print('Enter The number 1: ');
  int? a = int.parse(stdin.readLineSync()!);
  print('Enter The number 2: ');
  int? s = int.parse(stdin.readLineSync()!);
  print('$s before swap $a');
  swap(a, s);
}

void swap(int a, int s) {
  var temp = a;
  a = s;
  s = temp;
  print('$s After Swap $a');
}
