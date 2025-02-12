import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gdm_teste_tecnico/providers/motels_data_provider.dart';
import 'package:gdm_teste_tecnico/screens/motels.dart';
import 'package:gdm_teste_tecnico/widgets/motel.dart';

void main() {
  Widget createMotelsScreenWidget(ProviderContainer container) {
    return const MaterialApp(
      home: Scaffold(
        body: ProviderScope(
          child: MotelsScreen(),
        ),
      ),
    );
  }

  testWidgets('Testa a tela MotelsScreen - estado de carregamento',
      (tester) async {
    final container = ProviderContainer();
    final motelsNotifier = container.read(motelsProvider.notifier);
    motelsNotifier.state = null;

    await tester.pumpWidget(createMotelsScreenWidget(container));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();
  });

  testWidgets('Testa a tela MotelsScreen - estado de erro', (tester) async {
    final container = ProviderContainer();
    final motelsNotifier = container.read(motelsProvider.notifier);
    motelsNotifier.state = [
      {"error": "Falha ao carregar motéis"}
    ];

    await tester.pumpWidget(createMotelsScreenWidget(container));

    expect(find.text("Falha ao carregar motéis"), findsOneWidget);

    await tester.pumpAndSettle();
  });

  testWidgets('Testa a tela MotelsScreen - exibição de motéis', (tester) async {
    final motelsData = [
      {"name": "Motel 1", "description": "Descrição do Motel 1"},
      {"name": "Motel 2", "description": "Descrição do Motel 2"}
    ];

    final container = ProviderContainer();
    final motelsNotifier = container.read(motelsProvider.notifier);
    motelsNotifier.state = motelsData;

    await tester.pumpWidget(createMotelsScreenWidget(container));

    expect(find.byType(Motel), findsNWidgets(motelsData.length));
    expect(find.text("Motel 1"), findsOneWidget);
    expect(find.text("Motel 2"), findsOneWidget);

    await tester.pumpAndSettle();
  });
}
