/// Write a simple String Sum utility with a function string Sum(string num1, string num2)
/// which can accept only natural numbers and will return their sum.
/// Replace entered number with 0 (zero) if entered number is not a natural number.

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('returns 0 if the both numbers is not correct', () {
    expect(sum("", ""), 0);
  });

  test('replaces num1 with 0 if its empty', () {
    expect(sum("2", ""), 2);
  });

  test('replaces num2 with 0 if its empty', () {
    expect(sum("", "3"), 3);
  });

  test('returns sum of numbers', () {
    expect(sum("7", "5"), 12);
  });

  test('replaces num1 with 0 if its not natural number', () {
    expect(sum("13", "5"), 5);
  });

  test('replaces num2 with 0 if its not natural number', () {
    expect(sum("7", "15"), 7);
  });

  test('replaces both numbers with 0 if they are both not natural number', () {
    expect(sum("13", "15"), 0);
    expect(sum("-5", "-3"), 0);
  });
}

int sum(String num1, String num2) => processNumber(num1) + processNumber(num2);

int processNumber(String number) {
  var _number = int.tryParse(number) ?? 0;
  if (_number <= 0 || _number > 9) _number = 0;
  return _number;
}
