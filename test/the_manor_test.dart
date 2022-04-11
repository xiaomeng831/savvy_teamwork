import 'package:flutter_appfgds/customHomes/theManor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {

  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: TheManor()
    )
  );

  testWidgets("TheManor UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Container),findsNWidgets(1));

  });

  testWidgets("TheManor UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Text),findsNWidgets(3));

  });

  testWidgets("TheManor UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Column),findsNWidgets(1));

  });
}