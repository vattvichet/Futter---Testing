import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart';

void main() {
  testWidgets("Main screen widget Test", (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await widgetTester.enterText(textField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);
    var button = find.text('Reverse');
    expect(button, findsOneWidget);
    await widgetTester.tap(button);
    await widgetTester.pump();
    expect(find.text('olleH'), findsOneWidget);
  });
}
