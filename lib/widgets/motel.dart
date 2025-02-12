import 'package:flutter/material.dart';
import 'package:gdm_teste_tecnico/widgets/motel_carousel.dart';

class Motel extends StatelessWidget {
  const Motel({super.key, required this.motel});

  final dynamic motel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(motel["logo"]),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Colors.transparent,
                        Colors.white,
                      ],
                      stops: [0.0, 0.2],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.dstIn,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        motel["fantasia"],
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 27),
                      ),
                      Text(
                        motel["bairro"],
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 25,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  side:
                                      BorderSide(color: Colors.orange.shade400),
                                  minimumSize: Size.zero,
                                  padding: const EdgeInsets.all(5)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.orange.shade400,
                                  ),
                                  const SizedBox(width: 5),
                                  Baseline(
                                    baseline: 10,
                                    baselineType: TextBaseline.alphabetic,
                                    child: Text(
                                      "${motel["media"]}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                ),
                                child: Text(
                                  "${motel["qtdAvaliacoes"]} avaliações",
                                  maxLines: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.1,
                                      ),
                                ),
                              ),
                              const Icon(
                                Icons.expand_more,
                                size: 11,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 184, 182, 182),
                size: 27,
              ),
            ],
          ),
        ),
        MotelCarousel(suites: motel["suites"]),
      ],
    );
  }
}
