import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gdm_teste_tecnico/widgets/motel_details.dart';

class MotelCarousel extends StatelessWidget {
  const MotelCarousel({super.key, required this.suites});

  final List<dynamic> suites;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.8,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            autoPlay: false,
            viewportFraction: 0.9,
          ),
          items: suites.map((suite) {
            return MotelDetails(
              imageUrl: suite["fotos"][0],
              title: suite["nome"],
              suiteCategories: suite["categoriaItens"],
              periods: suite["periodos"],
            );
          }).toList(),
        ),
      ],
    );
  }
}
