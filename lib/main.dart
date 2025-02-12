import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gdm_teste_tecnico/screens/motels.dart';
import 'package:gdm_teste_tecnico/providers/motels_data_provider.dart';

void main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final motels = ref.watch(motelsProvider);

    Widget content = const Scaffold(
        body: Center(
            child: CircularProgressIndicator(
      color: Color.fromARGB(255, 242, 8, 45),
    )));

    if (motels != null) {
      content = const MotelsScreen();
    }

    return MaterialApp(
      title: 'Guia de Motéis go',
      theme: ThemeData(
        useMaterial3: true,
        splashFactory: NoSplash.splashFactory,
      ),
      home: content,
    );
  }
}
