import 'package:flutter/material.dart';

enum MyTextButton { x, y, b, a }

class TextWidget extends StatelessWidget {
  final double width;
  final double height;
  final MyTextButton text;
  final style = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Color(0xffFFFFFF),
  );

  const TextWidget({
    Key? key,
    this.width = 9,
    this.height = 20,
    this.text = MyTextButton.x,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Text textButton;

    switch (text) {
      case MyTextButton.x:
        textButton = Text(
          'X',
          style: style,
        );
        break;
      case MyTextButton.y:
        textButton = Text(
          'Y',
          style: style,
        );
        break;
      case MyTextButton.b:
        textButton = Text(
          'B',
          style: style,
        );
        break;
      case MyTextButton.a:
        textButton = Text(
          'A',
          style: style,
        );
        break;
      default:
    }

    return Container(
      width: width,
      height: height,
      child: textButton,
    );
  }
}
