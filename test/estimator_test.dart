import 'package:flutter_appfgds/estimator/estimator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {

  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: Estimator()
    )
  );

  testWidgets("Estimator UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Container),findsNWidgets(126));

  });

  testWidgets("Estimator UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Text),findsNWidgets(106));

  });

  testWidgets("Estimator UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Column),findsNWidgets(2));

  });
}