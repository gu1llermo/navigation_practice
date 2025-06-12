import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const desplazamiento = 2 * kToolbarHeight;

const _gradienteLineal = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 1),
  colors: <Color>[
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xffac255e),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color(0xfff39060),
    Color(0xffffb56b),
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
);

class GradientesScreen extends StatelessWidget {
  const GradientesScreen({super.key});

  static const String path = '/gradientes';
  static const String name = 'gradientes_screen';

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('GradientesScreen')),
      body: Stack(
        // alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: const BoxDecoration(gradient: _gradienteLineal),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: TextField(
              controller: controller,
              onChanged: (value) {},
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'\d+\.?\d*'))
                // RegExp(r'\d+\.?\d*') <-- Para validar ciertos números
                // RegExp(r'[0-9]+[.]?[0-9]*')
                // RegExp(r'[0-9]+[.]{0,1}[0-9]*')
                // RegExp(r'^[a-zA-Z\d_.-]+@[a-zA-Z\d_.-]+\.[a-z]+$') <-- es mi expresión regular para los correos
                // ^([whtps]{3,5})?[:.]?(\/\/)?[a-zA-Z\d._-]+\.[a-z]+       <-- para validar direcciones web
              ],
              textAlign: TextAlign.end,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                suffix: Text(
                  "\Bs",
                  style: TextStyle(color: Colors.green),
                ),

                filled: true,
                fillColor: Colors.black.withOpacity(.2),
                enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                // border: UnderlineInputBorder(
                //     borderRadius: BorderRadius.circular(20),
                //     borderSide: BorderSide(
                //         color: Colors.yellow,
                //         style: BorderStyle.solid,
                //         width: 10)),

                floatingLabelAlignment: FloatingLabelAlignment.center,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Tasa',
                labelStyle: TextStyle(color: Colors.white),

                constraints: BoxConstraints.tightFor(
                  width: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
