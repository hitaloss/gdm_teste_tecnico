import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class MotelDetails extends StatelessWidget {
  const MotelDetails({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.suiteCategories,
    required this.periods,
  });

  final String imageUrl;
  final String title;
  final List<dynamic> suiteCategories;
  final List<dynamic> periods;

  @override
  Widget build(BuildContext context) {
    final categoriesReduced = suiteCategories.sublist(0, 4);
    final brlCurrency = NumberFormat("###.00#", "pt_BR");

    List<Widget> categoryIcons = categoriesReduced.map((category) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.network(
            category["icone"],
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList();

    List<Widget> availablePeriod = periods.map((period) {
      return Card(
        margin: const EdgeInsets.all(3),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      period["desconto"] != null
                          ? Row(
                              children: [
                                Text(period["tempoFormatado"],
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                                const SizedBox(width: 5),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Colors.green.shade600,
                                      width: 0.7,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "${period["desconto"]["desconto"].floor()}% OFF",
                                    style: TextStyle(
                                      color: Colors.green.shade600,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Text(period["tempoFormatado"],
                              style: Theme.of(context).textTheme.titleLarge),
                      Text(
                        "R\$ ${brlCurrency.format(period["valor"])}",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
          child: Card(
            margin: const EdgeInsets.all(3),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.network(
                    imageUrl,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.w300, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(3),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...categoryIcons,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "ver\ntodos",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            IconButton(
                              onPressed: () {},
                              constraints: const BoxConstraints(),
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                Icons.expand_more,
                                size: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ...availablePeriod
      ],
    );
  }
}
