import 'package:flutter/material.dart';

class PlusButtonWidget extends StatelessWidget {
  final double width;
  final double heigth;

  const PlusButtonWidget({
    Key? key,
    this.width = 19,
    this.heigth = 6.34,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: width,
          height: heigth,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff4A494E),
                Color(0xff525157),
              ],
            ),
          ),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Container(
            width: width,
            height: heigth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4A494E),
                  Color(0xff525157),
                  // Colors.red
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
