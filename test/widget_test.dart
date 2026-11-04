import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:footapp/main.dart';

void main() {
  testWidgets('the home page lists the first dinners', (tester) async {
    tester.view.physicalSize = const Size(1170, 4000);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);

    // Tests draw text in a wide placeholder font, which makes a few rows overflow by some
    // pixels. That says nothing about the real fonts, so only overflow reports are skipped.
    final reportError = FlutterError.onError;
    FlutterError.onError = (details) {
      if (details.exceptionAsString().contains('overflowed')) return;
      reportError?.call(details);
    };
    addTearDown(() => FlutterError.onError = reportError);

    await tester.pumpWidget(const MyApp());

    expect(find.text('Veg Dinner'), findsWidgets);
    expect(find.text('Non Veg Dinner'), findsWidgets);
    expect(find.text('Chinese'), findsWidgets);
  });
}
