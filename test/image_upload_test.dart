import 'package:flutter_appfgds/contact/image_upload.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {

  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ImageUpload()
    )
  );

  testWidgets("ImageUpload UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Container),findsNWidgets(8));

  });

  testWidgets("ImageUpload UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Text),findsNWidgets(3));

  });

  testWidgets("ImageUpload UI Test",  (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Column),findsNWidgets(4));

  });
}