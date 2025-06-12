import 'package:flutter/material.dart';

const _primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    tileMode: TileMode.repeated,
    colors: [
      Color.fromARGB(255, 50, 130, 204),
      Color.fromARGB(255, 51, 38, 116),
    ]);
const _secondaryGradient = LinearGradient(colors: [
  Color(0xFF344F66),
  Color(0xFF20344A),
]);

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  static const String path = '/grid_view';
  static const String name = 'grid_view_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridViewScreen')),
      body: Column(
        children: [
          const Text('Guillermo'),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              // physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) => Container(
                // width: 10,
                // height: 10,
                margin: const EdgeInsets.all(8),
                // margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    gradient: _primaryGradient,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> generateCuadrados(int n) {
    return List<Widget>.generate(
      n,
      (index) {
        return Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              gradient: _primaryGradient,
              borderRadius: BorderRadius.circular(20)),
        );
      },
    );
  }
}
