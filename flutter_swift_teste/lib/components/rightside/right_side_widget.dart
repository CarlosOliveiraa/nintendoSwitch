import 'package:flutter/material.dart';
import 'package:flutter_swift_teste/components/leftside/arrow_widget.dart';
import 'package:flutter_swift_teste/components/others/analog.dart';
import 'package:flutter_swift_teste/components/others/button_widget.dart';
import 'package:flutter_swift_teste/components/others/buttons.dart';
import 'package:flutter_swift_teste/components/rightside/home_widget.dart';
import 'package:flutter_swift_teste/components/rightside/plus_button_widget.dart';

class RigthSideWidget extends StatelessWidget {
  final double width;
  final double heigth;

  const RigthSideWidget({
    Key? key,
    this.width = 95,
    this.heigth = 231,
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
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnalogButtonWidget(
                  size: size.height * 0.08,
                ),
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
