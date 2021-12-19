import 'package:flutter/material.dart';
import 'package:flutter_swift_teste/components/leftside/minus_button_widget.dart';

class LeftSideWidget extends StatelessWidget {
  const LeftSideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //CRIAR UM PADDING RESPONSÍVEL.
    //CALUCULAR O VALOR DA LARGRURA DO ESPAÇAMENTO DIVIDIDO PELA LARGURA DA LADO = 12 / 375
    return Column(
      children: [
        Align(
          child: MinusButtonWidget(
            width: size.width * 0.19,
            heigth: size.height * 0.021,
          ),
        )
      ],
    );
  }
}
