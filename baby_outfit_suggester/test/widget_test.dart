import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:baby_outfit_suggester/app.dart';

void main() {
  testWidgets('Tab navigation switches between primary screens', (
    tester,
  ) async {
    await tester.pumpWidget(const BabyOutfitSuggesterApp());
    await tester.pumpAndSettle();

    expect(find.text('Today'), findsOneWidget);

    await tester.tap(find.byIcon(CupertinoIcons.sparkles));
    await tester.pumpAndSettle();
    expect(find.text('Tips'), findsWidgets);

    await tester.tap(find.byIcon(CupertinoIcons.gear));
    await tester.pumpAndSettle();
    expect(find.text('Settings'), findsWidgets);
  });
}
