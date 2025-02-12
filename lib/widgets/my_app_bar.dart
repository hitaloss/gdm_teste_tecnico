import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Icon(
                Icons.sort,
                color: Colors.white,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(255, 105, 2, 20),
                ),
                height: 35,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 30),
                    ),
                    icon: const Icon(
                      Icons.bolt,
                      color: Color.fromARGB(255, 242, 8, 45),
                    ),
                    label: const Text(
                      "ir agora",
                      style: TextStyle(color: Color.fromARGB(255, 40, 40, 40)),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 105, 2, 20),
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 30),
                    ),
                    icon:
                        const Icon(Icons.event_available, color: Colors.white),
                    label: const Text(
                      "ir outro dia",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ]),
              ),
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ],
          ),
          TextButton.icon(
            label: const Icon(
              Icons.expand_more,
              color: Colors.white,
            ),
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            icon: const Text(
              "zona norte",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
