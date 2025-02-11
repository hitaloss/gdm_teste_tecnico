import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gdm_teste_tecnico/widgets/motel_details.dart';

class MotelCarousel extends StatelessWidget {
  const MotelCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> motelData = [
      {"image": "https://placehold.jp/300x200.png", "title": "suíte plus"},
      {"image": "https://placehold.jp/300x200.png", "title": "suíte executiva"},
      {"image": "https://placehold.jp/300x200.png", "title": "suíte estrela"},
    ];

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.5,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            autoPlay: false,
            viewportFraction: 0.9,
          ),
          items: motelData.map((motel) {
            return MotelDetails(
              imageUrl: motel["image"]!,
              title: motel["title"]!,
            );
          }).toList(),
        ),
      ],
    );
  }
}
