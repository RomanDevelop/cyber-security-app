// This is a basic Flutter widget test for MockIPTV Auditor.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:mock_iptv_auditor/main.dart';

void main() {
  testWidgets('MockIPTV Auditor app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MockIPTVAuditorApp());

    // Verify that the app title is displayed.
    expect(find.text('MockIPTV Auditor'), findsOneWidget);

    // Verify that the main description is displayed.
    expect(
        find.text('Educational Tool for Mobile App Auditors'), findsOneWidget);

    // Verify that the main buttons are present.
    expect(find.text('Open Sample App Page'), findsOneWidget);
    expect(find.text('Start Audit Checklist'), findsOneWidget);
  });
}
