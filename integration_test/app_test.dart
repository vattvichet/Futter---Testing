import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/main.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("Testing the entire App", () {
    testWidgets("Form fill Testing", (tester) async {
      final FlutterExceptionHandler? originalOnError = FlutterError.onError;

      await tester.pumpWidget(const MyApp());
      FlutterError.onError = originalOnError;
      await Future.delayed(const Duration(seconds: 3));
      var textField = find.byType(TextField);
      expect(textField, findsOneWidget);
      await tester.enterText(find.byKey(const Key('textFieldKey')), 'Texting');
      await tester.tap(find.byKey(const Key('reverseButtonKey')));
      await tester.pump();
      await Future.delayed(const Duration(seconds: 2));
      expect(find.text('Texting'), findsOneWidget);
      await Future.delayed(const Duration(seconds: 3));
    });
  });
}
