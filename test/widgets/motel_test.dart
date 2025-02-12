import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gdm_teste_tecnico/widgets/motel.dart';
import 'package:gdm_teste_tecnico/widgets/motel_carousel.dart';

void main() {
  testWidgets('Testa o widget Motel - exibição de informações', (tester) async {
    final motel = {
      "logo": "https://example.com/logo.jpg",
      "fantasia": "Motel Exemplo",
      "bairro": "Centro",
      "media": 4.5,
      "qtdAvaliacoes": 120,
      "suites": [],
    };

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Motel(motel: motel),
        ),
      ),
    );

    expect(find.text("Motel Exemplo"), findsOneWidget);

    expect(find.text("Centro"), findsOneWidget);

    expect(find.text("4.5"), findsOneWidget);

    expect(find.text("120 avaliações"), findsOneWidget);

    expect(find.byType(CircleAvatar), findsOneWidget);

    expect(find.byIcon(Icons.star), findsOneWidget);

    expect(find.byIcon(Icons.expand_more), findsOneWidget);

    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });

  testWidgets('Testa o widget Motel - ausência de logo', (tester) async {
    final motel = {
      "logo": "",
      "fantasia": "Motel Exemplo",
      "bairro": "Centro",
      "media": 4.5,
      "qtdAvaliacoes": 120,
      "suites": [],
    };

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Motel(motel: motel),
        ),
      ),
    );

    expect(find.text("Motel Exemplo"), findsOneWidget);

    expect(find.text("Centro"), findsOneWidget);

    expect(find.text("4.5"), findsOneWidget);

    expect(find.text("120 avaliações"), findsOneWidget);

    expect(find.byType(CircleAvatar), findsOneWidget);
  });

  testWidgets('Testa o widget Motel - interações de botões', (tester) async {
    final motel = {
      "logo": "https://example.com/logo.jpg",
      "fantasia": "Motel Exemplo",
      "bairro": "Centro",
      "media": 4.5,
      "qtdAvaliacoes": 120,
      "suites": [],
    };

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Motel(motel: motel),
        ),
      ),
    );

    final starButton = find.byIcon(Icons.star);
    expect(starButton, findsOneWidget);

    final expandButton = find.byIcon(Icons.expand_more);
    expect(expandButton, findsOneWidget);

    final favoriteButton = find.byIcon(Icons.favorite);
    expect(favoriteButton, findsOneWidget);
  });

  testWidgets('Testa o widget Motel - exibição do carousel de suítes',
      (tester) async {
    final motel = {
      "logo": "https://example.com/logo.jpg",
      "fantasia": "Motel Exemplo",
      "bairro": "Centro",
      "media": 4.5,
      "qtdAvaliacoes": 120,
      "suites": [
        {"name": "Suíte 1", "description": "Descrição da suíte 1"},
        {"name": "Suíte 2", "description": "Descrição da suíte 2"},
      ],
    };

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Motel(motel: motel),
        ),
      ),
    );

    expect(find.byType(MotelCarousel), findsOneWidget);
  });
}
