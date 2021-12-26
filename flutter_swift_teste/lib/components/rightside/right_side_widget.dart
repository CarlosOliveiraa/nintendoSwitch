import 'package:flutter/material.dart';

import '../others/analog.dart';
import '../others/button_widget.dart';
import '../others/buttons.dart';
import 'home_widget.dart';
import 'plus_button_widget.dart';

class RigthSideWidget extends StatelessWidget {
  const RigthSideWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(size.width * 0.032),
      child: Stack(
        children: [
          Align(
            child: PlusButtonWidget(
              width: size.width * 0.05,
            ),
            alignment: Alignment.topRight,
          ),
          Align(
            child: Column(
              children: [
                const Buttons(
                  topChild: ButtonWidget(
                    button: Button.x,
                  ),
                  leftChild: ButtonWidget(
                    button: Button.y,
                  ),
                  rightChild: ButtonWidget(
                    button: Button.a,
                  ),
                  downChild: ButtonWidget(
                    button: Button.b,
                  ),
                ),
                AnalogButtonWidget(
                  size: size.height * 0.08,
                ),
              ],
            ),
          ),
          Align(
            child: HomeWidget(
              size: size.height * 0.04,
            ),
            alignment: Alignment.bottomRight,
          )
        ],
      ),
    );
  }
}
