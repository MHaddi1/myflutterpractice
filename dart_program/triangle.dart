import 'dart:io';

void main(List<String> args) {
  print('Enter The number 1: ');
  int? a = int.parse(stdin.readLineSync()!);
  triangle(a);
}

void triangle(int n) {
  for (var i = 0; i < n; i++) {
    for (var a = i; a < n; a++) {
      stdout.write(' ');
    }
    for (var j = 0; j < (i * 2 - 1); j++) {
      stdout.write('*');
    }
    print('\n');
  }
  for (var i = n; i > 0; i--) {
    for (var a = i; a < n; a++) {
      stdout.write(' ');
    }
    for (var j = 0; j < (i * 2 - 1); j++) {
      stdout.write('*');
    }
    print('\n');
  }
  for (var i = 0; i < n; i++) {
    
    for (var j = 0; j < n; j++) {
      stdout.write('*');
      stdout.write('*');
      stdout.write('*');
      stdout.write('*');
    }
    stdout.write('\n');
  }
  for (var i = 0; i < n; i++) {
    stdout.write('*');
  }
  for (var i = 0; i < n; i++) {
    stdout.write('*'); 
    for (var s = i; s < n; s++) {
        stdout.write(' ');
      }
      
     stdout.write('\n');
  }
  for (var i = 0; i < n; i++) {
    stdout.write('* ');
    
    // for (var j = 0; j < n; j++) {
    //   stdout.write('*');
    //   stdout.write('*');
    //   stdout.write('*');
      for (var s = i; s < n; s++) {
        stdout.write(' ');
      }
       
    // }
    stdout.write('\n');
  }
}
