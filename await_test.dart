void main() {
  performeTasks();
}

void performeTasks() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  String result1 = '1';
  print(result1);
}

Future task2() async {
  String result2 = 'null';
  Duration threeSecond = Duration(seconds: 3);
  // sleep(threeSecond);
  await Future.delayed(threeSecond, () {
    result2 = '2';
    print(result2);
  });
  return result2;
}

void task3(String task2Data) {
  String result3 = '3' + task2Data;
  print(result3);
}
