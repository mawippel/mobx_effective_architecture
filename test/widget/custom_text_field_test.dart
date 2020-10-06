// Import the test package and Counter class
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/route_manager.dart';
import 'package:mobx_effective_architecture/components/custom_text_field.dart';

void main() {
  testWidgets('CustomTextField has a label text', (WidgetTester tester) async {
    // Arrange
    const labelText = 'SomeLabel';

    // Act
    await tester.pumpWidget(
      const GetMaterialApp(
        home: Material(
          child: CustomTextField(
            labelText: labelText,
          ),
        ),
      ),
    );

    // Assert
    expect(find.text(labelText), findsOneWidget);
  });
}
