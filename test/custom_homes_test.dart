import 'package:flutter_appfgds/customHomes/customHomes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {

  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: CustomHomes()
    )
  );

  testWidgets("CustomHomes UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Container),findsNWidgets(2));

  });

  testWidgets("CustomHomes UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Text),findsNWidgets(3));

  });

  testWidgets("CustomHomes UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Column),findsNWidgets(1));

  });
}