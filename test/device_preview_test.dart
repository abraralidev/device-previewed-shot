import 'package:device_preview_shot/src/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('render widget', (tester) async {
    await tester.pumpWidget(
      DevicePreviewShot(
        builder: (context) => const MaterialApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(DevicePreviewShot), findsOneWidget);
  });
}
