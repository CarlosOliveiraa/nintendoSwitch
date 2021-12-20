import 'package:flutter/material.dart';

import '../components/leftside/arrow_widget.dart';
import '../components/leftside/minus_button_widget.dart';
import '../components/others/button_widget.dart';

class LeftSideWidget extends StatelessWidget {
  final double width;
  final double height;

  const LeftSideWidget({
    Key? key,
    this.width = 95,
    this.height = 231,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //CRIAR UM PADDING RESPONSÍVEL.
    //CALUCULAR O VALOR DA LARGRURA DO ESPAÇAMENTO DIVIDIDO PELA LARGURA DA LADO = 12 / 375
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Column(
            children: [
              LayoutBuilder(builder: (context, constraints) {
                return Align(
                  child: MinusButtonWidget(
                    width: size.width * 0.05,
                  ),
                  alignment: Alignment.topLeft,
                );
              }),
              LayoutBuilder(builder: (context, constraints) {
                return Align(
                  child: ButtonWidget(
                    size: constraints.maxWidth * 0.29,
                    button: Button.up,
                    child: const ArrowWidget(Direction.up),
                  ),
                  alignment: Alignment.bottomCenter,
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
