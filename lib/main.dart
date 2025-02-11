import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdm_teste_tecnico/screens/motels.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Guia de Motéis go',
        theme: ThemeData(
          useMaterial3: true,
          splashFactory: NoSplash.splashFactory,
        ),
        home: const MotelsScreen());
  }
}
