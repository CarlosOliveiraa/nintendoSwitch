import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../rightside/text_widget.dart';

enum Button { up, left, down, right, x, y, b, a }

class ButtonWidget extends StatelessWidget {
  final Button button;
  final double size;
  final Widget child;
  final style = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Color(0xffFFFFFF),
  );

  const ButtonWidget({
    Key? key,
    this.size = 28.08,
    required this.button,
    this.child = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var gradientBack;
    var gradientFront;
    late Widget filho;
    const gradientVerticalBack = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff7B8287),
        Color(0xff050F11),
      ],
    );
    const gradientDiagonalBack = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff7B8287),
        Color(0xff050F11),
      ],
    );
    const gradientVerticalFront = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xff686D70),
        Color(0xff050F11),
      ],
    );
    const gradientDiagonalFront = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff686D70),
        Color(0xff050F11),
      ],
    );

    //CONDIÇÃO SE FOR UP OU X
    if (button == Button.up || button == Button.x) {
      gradientBack = gradientVerticalBack;
      gradientFront = gradientVerticalFront;
      if (button == Button.up) {
        filho = child;
      } else if (button == Button.x) {
        filho = LayoutBuilder(builder: (context, contraints) {
          return const Center(
            child: TextWidget(),
            // child: Text(
            //   'X',
            //   style: GoogleFonts.openSans(textStyle: style),
            // ),
          );
        });
      }
    }
    //CONDIÇÃO SE LEFT OU Y
    if (button == Button.left || button == Button.y) {
      gradientBack = gradientVerticalBack;
      gradientFront = gradientVerticalFront;
      if (button == Button.left) {
        filho = child;
      } else if (button == Button.y) {
        filho = LayoutBuilder(builder: (context, contraints) {
          return const Center(
            child: TextWidget(
              text: MyTextButton.y,
            ),
            // child: Text(
            //   'Y',
            //   style: GoogleFonts.openSans(textStyle: style),
            // ),
          );
        });
      }
    }
    //CONDIÇÃO SE DOWN OU B
    if (button == Button.down || button == Button.b) {
      gradientBack = gradientDiagonalBack;
      gradientFront = gradientDiagonalFront;
      if (button == Button.down) {
        filho = child;
      } else if (button == Button.b) {
        filho = Center(
          child: LayoutBuilder(builder: (context, contraints) {
            return const TextWidget(
              text: MyTextButton.b,
            );
          }),
        );
      }
    }
    //CONDIÇÃO SE RIGHT OU A
    if (button == Button.right || button == Button.a) {
      gradientBack = gradientDiagonalBack;
      gradientFront = gradientDiagonalFront;
      if (button == Button.right) {
        filho = child;
      } else if (button == Button.a) {
        filho = LayoutBuilder(builder: (context, contraints) {
          return const Center(
            child: TextWidget(text: MyTextButton.a),
          );
        });
      }
    }
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: gradientBack,
        shape: BoxShape.circle,
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * 0.80,
          height: constraints.maxHeight * 0.80,
          decoration: BoxDecoration(
            gradient: gradientFront,
            shape: BoxShape.circle,
          ),
          child: filho,
        );
      }),
    );
  }
}
