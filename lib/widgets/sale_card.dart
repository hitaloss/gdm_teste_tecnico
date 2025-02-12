import 'package:flutter/material.dart';

class SaleCard extends StatelessWidget {
  const SaleCard({super.key, required this.motel});

  final dynamic motel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                motel["suites"][0]["fotos"].last,
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Text(
                        "🔥",
                        style: TextStyle(fontSize: 25),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${motel['fantasia']}",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            "${motel['bairro']}",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 10, letterSpacing: .1),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text(
                            "${motel['suites'][0]["periodos"].last["desconto"]["desconto"]}% de desconto",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                  decoration: TextDecoration.underline,
                                  color: const Color.fromARGB(255, 36, 35, 35),
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.1,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "a partir de R\$ ${motel['suites'][0]["periodos"].last["valorTotal"]}",
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      letterSpacing: 0.1,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        height: 35,
                        child: FilledButton.icon(
                          onPressed: () {},
                          icon: const Text("reservar"),
                          label: const Icon(Icons.chevron_right),
                          style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 30),
                              backgroundColor:
                                  const Color.fromARGB(255, 26, 186, 141)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
