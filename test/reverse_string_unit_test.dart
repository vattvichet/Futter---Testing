import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart';

void main() {
  test('String should be reverse', () {
    String initial = "Hello World";
    String reversed = reverseString(initial);
    expect(reversed, 'dlroW olleH');
  });
}
