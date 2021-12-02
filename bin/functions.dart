// void main() {
//   // sum();
//   //sumParams(20, 30);
//   // var sum1 = sumReturn(200, 300);
//   // print(sum1);

//   // sumReq(firstNumber: 100, secondNumber: 200, third: 20);
//   // sumFunction(23, 54, (int f, int s) {
//   //   print('Function sum ${f + s}');
//   // });

//   // sumFuture(12, 12);
//   // print("after sumFuture");

//   sum();
//   print('after Future');
// }

Future<void> main() async {
  await sum();
  print('after Future');
}

void sumParams(int a, int b) {
  print('${a + b}');
}

int sumReturn(int a, int b) {
  return a + b;
}

void sumFunction(int a, int b, void Function(int, int) customSum) {
  customSum(a, b);
}

Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 4));
  print('Sum future ${a + b}');
  return a + b;
}

Future<void> sum() async {
  await sumFuture(33, 44);
  print('in Just sum');
}
// void sumReq(
//     {required int firstNumber, required int secondNumber, int third = 0}) {
//   print(firstNumber + secondNumber + third);
// }

// void sum() {
//   print(2 + 3);
// }
