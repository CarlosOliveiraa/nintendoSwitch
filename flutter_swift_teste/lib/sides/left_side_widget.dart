import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swift_teste/components/others/analog.dart';

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
    return Padding(
      padding: EdgeInsets.all(size.width * 0.032),
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          children: [
            const Align(
              child: MinusButtonWidget(),
              alignment: Alignment.topLeft,
            ),
            LayoutBuilder(builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth * 0.91,
                height: constraints.maxHeight * 0.68,
                child: AnalogButtonWidget(
                  size: constraints.maxWidth * 0.66,
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
