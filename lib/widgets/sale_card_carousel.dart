import 'package:flutter/material.dart';

import "package:gdm_teste_tecnico/widgets/sale_card.dart";

class SaleCardCarousel extends StatefulWidget {
  const SaleCardCarousel({super.key, required this.motels});

  final List<dynamic> motels;

  @override
  State<SaleCardCarousel> createState() => _SaleCardCarouselState();
}

class _SaleCardCarouselState extends State<SaleCardCarousel> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // final List motelsHavingSale = [];
    // final List suitesOnSale = [];

    // widget.motels.map((motel) {
    //   motel["suites"].map((suite) {
    //     suite["periodos"].map((periodo) {
    //       if (periodo["desconto"] != null) {
    //         motelsHavingSale.add(motel);
    //         suitesOnSale.add(suite);
    //       }
    //     });
    //   });
    // });

    return Column(
      children: [
        SizedBox(
          height: 220,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.motels.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return SaleCard(motel: widget.motels[0]);
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.motels.length, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 12 : 8,
              height: _currentPage == index ? 12 : 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? Colors.grey
                    : const Color.fromARGB(255, 216, 214, 214),
              ),
            );
          }),
        ),
      ],
    );
  }
}
