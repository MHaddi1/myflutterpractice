import 'dart:io';

void main(List<String> args) {
  handle h = new handle();
  try {
    print('Enter The amount to widthdraw: ');
    int? a = int.parse(stdin.readLineSync()!);
    int totalam = 1000;
    balanceManage(a, totalam);
  } catch (e, s) {
    print(e);
    print(h.Error());

    print(s);
  }
}

class handle implements Exception {
  String Error() {
    return "Money is could not be less then 0";
  }
}

void balanceManage(int bal, int totalam) {
  if (bal < 0) {
    throw Exception();
  } else if (bal <= totalam) {
    print('You can Widthdraw the Amount: ');

    totalam -= bal;
    print('remaning balance: $totalam');
  } else if (bal > totalam) {
    print(
        "you are exceding the Total money of your account and you total amount is $totalam try to enter balance between total");
  }
}
