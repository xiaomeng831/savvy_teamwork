import 'dart:developer';

import 'package:flutter_appfgds/service/service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {

  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: Service()
    )
  );

  testWidgets("Contact Service Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Container),findsNWidgets(3));

  });

  testWidgets("Contact Service Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Text),findsNWidgets(18));

  });

  testWidgets("Contact Service Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Column),findsNWidgets(1));

  });
}