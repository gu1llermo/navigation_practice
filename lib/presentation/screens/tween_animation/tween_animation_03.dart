import 'package:flutter/material.dart';

enum Direction {
  derecha,
  izquierda;

  bool isDerecha() {
    return this == derecha;
  }
}

class TweenAnimation03 extends StatefulWidget {
  const TweenAnimation03({super.key});
  static const String path = '/tween-animation-03';

  @override
  State<TweenAnimation03> createState() => _TweenAnimation03State();
}

class _TweenAnimation03State extends State<TweenAnimation03> {
  int count = 0;
  int oldCount = 0;
  Direction direction = Direction.derecha;

  @override
  Widget build(BuildContext context) {
    double begin = 0.0;
    double end = 1.0;
    if (direction.isDerecha()) {
      begin = 1.0;
      end = 0.0;
    }
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            TweenAnimationBuilder<double>(
                key: Key(count.toString()),
                duration: const Duration(seconds: 1),
                tween: Tween(begin: begin, end: end),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: direction.isDerecha() ? 1 - value : value,
                    child: Transform.translate(
                      offset: Offset(
                          direction.isDerecha()
                              ? -100 * value
                              : 100 * (1 - value),
                          0),
                      child: Text(
                        count.toString(),
                        style: const TextStyle(fontSize: 60),
                      ),
                    ),
                  );
                }),
            if (oldCount != count)
              TweenAnimationBuilder<double>(
                  key: Key('${oldCount + 3}'),
                  duration: const Duration(seconds: 1),
                  tween: Tween(begin: begin, end: end),
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: direction.isDerecha() ? value : 1 - value,
                      child: Transform.translate(
                        offset: Offset(
                            direction.isDerecha()
                                ? 100 * (1 - value)
                                : -100 * value,
                            0),
                        child: Text(
                          oldCount.toString(),
                          style: const TextStyle(fontSize: 60),
                        ),
                      ),
                    );
                  }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'add',
            child: const Icon(Icons.add),
            onPressed: () {
              direction = Direction.derecha;
              oldCount = count++;
              setState(() {});
            },
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: 'remove',
            onPressed: (count <= 0)
                ? null
                : () {
                    direction = Direction.izquierda;
                    oldCount = count--;
                    setState(() {});
                  },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
