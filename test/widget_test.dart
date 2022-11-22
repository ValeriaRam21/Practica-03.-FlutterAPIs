// Esta es una prueba básica de widgets de Flutter.
//
// Para realizar una interacción con un widget en su prueba, use WidgetTester
// utilidad en el paquete flutter_test. Por ejemplo, puede enviar tocar y desplazarse
// gestos. También puede usar WidgetTester para encontrar widgets secundarios en el widget
// árbol, lea el texto y verifique que los valores de las propiedades del widget sean correctos.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:practica2_api/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    //Cree nuestra aplicación y active un marco.
    await tester.pumpWidget(const MyApp());

    // Verifica que nuestro contador comience en 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toque el ícono '+' y active un marco.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    //Verifica que nuestro contador se haya incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
