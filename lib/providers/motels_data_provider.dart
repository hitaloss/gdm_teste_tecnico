import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MotelsDataNotifier extends StateNotifier<Map<String, dynamic>?> {
  MotelsDataNotifier() : super(null) {
    fetchMotels();
  }

  Future<void> fetchMotels() async {
    try {
      final response = await http
          .get(Uri.parse("https://api.npoint.io/e728bb91e0cd56cc0711"));

      if (response.statusCode == 200) {
        state = jsonDecode(response.body);
      } else {
        throw Exception("Falha ao carregar conteúdo");
      }
    } catch (error) {
      state = {"error": error.toString()};
    }
  }
}

final motelsProvider =
    StateNotifierProvider<MotelsDataNotifier, Map<String, dynamic>?>(
        (ref) => MotelsDataNotifier());
