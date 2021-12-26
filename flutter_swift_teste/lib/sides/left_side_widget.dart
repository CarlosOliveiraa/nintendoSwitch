import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swift_teste/components/leftside/arrow_widget.dart';
import 'package:flutter_swift_teste/components/leftside/sound_widget.dart';
import 'package:flutter_swift_teste/components/others/analog.dart';
import 'package:flutter_swift_teste/components/others/button_widget.dart';
import 'package:flutter_swift_teste/components/others/buttons.dart';

import '../components/leftside/minus_button_widget.dart';

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
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     MinusButtonWidget(width: size.width * 0.05),
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         AnalogButtonWidget(
      //           size: size.height * 0.08,
      //         ),
      //         Buttons(
      //             topChild: ButtonWidget(
      //               size: size.width * 0.07,
      //               button: Button.up,
      //               child: const ArrowWidget(Direction.up),
      //             ),
      //             leftChild: ButtonWidget(
      //               size: size.width * 0.07,
      //               button: Button.left,
      //               child: const ArrowWidget(Direction.left),
      //             ),
      //             downChild: ButtonWidget(
      //               size: size.width * 0.07,
      //               button: Button.down,
      //               child: const ArrowWidget(Direction.down),
      //             ),
      //             rightChild: ButtonWidget(
      //               size: size.width * 0.07,
      //               button: Button.right,
      //               child: const ArrowWidget(Direction.right),
      //             )),
      //       ],
      //     ),
      //     SoundWidget(size: size.height * 0.03),
      //   ],
      // ),
      child: Stack(
        children: [
          Align(
            child: MinusButtonWidget(
              width: size.width * 0.05,
            ),
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnalogButtonWidget(
                  size: size.height * 0.08,
                ),
                Buttons(
                  topChild: ButtonWidget(
                    size: size.width * 0.07,
                    button: Button.up,
                    child: const ArrowWidget(Direction.up),
                  ),
                  leftChild: const ButtonWidget(
                    button: Button.left,
                    child: ArrowWidget(Direction.left),
                  ),
                  downChild: const ButtonWidget(
                    button: Button.down,
                    child: ArrowWidget(Direction.down),
                  ),
                  rightChild: const ButtonWidget(
                    button: Button.right,
                    child: ArrowWidget(Direction.right),
                  ),
                ),
              ],
            ),
          ),
          Align(
            child: SoundWidget(
              size: size.height * 0.03,
            ),
            alignment: Alignment.bottomLeft,
          )
        ],
      ),
    );
  }
}
