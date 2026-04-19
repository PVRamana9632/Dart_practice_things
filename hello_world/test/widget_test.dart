import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world/main.dart';

void main() {
  group('MyApp Widget Tests', () {
    testWidgets('App launches and displays home page', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(MyApp());
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('Home page contains expected widgets', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(MyApp());
      expect(find.text('Hello World'), findsOneWidget);
    });

    testWidgets('Floating action button increments counter', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(MyApp());
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
      expect(find.text('1'), findsOneWidget);
    });
  });
}
