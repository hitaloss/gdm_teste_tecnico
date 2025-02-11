import 'package:flutter/material.dart';

class SaleCard extends StatelessWidget {
  const SaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://placehold.jp/150x150.png',
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              "maxim's motel",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              "tucuruvi - são paulo",
                              style: Theme.of(context).textTheme.bodySmall,
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
                              "30% de desconto",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    decoration: TextDecoration.underline,
                                    color:
                                        const Color.fromARGB(255, 36, 35, 35),
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "a partir de R\$ 81,41",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          height: 35,
                          child: FilledButton.icon(
                            onPressed: () {},
                            icon: const Text("resevar"),
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
            ),
          ],
        ),
      ),
    );
  }
}
