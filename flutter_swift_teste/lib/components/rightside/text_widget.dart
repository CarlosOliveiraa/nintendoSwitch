import 'package:flutter/material.dart';

enum MyTextButton { x, y, b, a }

class TextWidget extends StatelessWidget {
  final double size;
  final Color color;
  final MyTextButton text;

  const TextWidget({
    Key? key,
    this.text = MyTextButton.x,
    this.size = 28,
    this.color = Colors.white70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String textButton;

    switch (text) {
      case MyTextButton.x:
        textButton = 'X';
        break;
      case MyTextButton.y:
        textButton = 'Y';

        break;
      case MyTextButton.b:
        textButton = 'B';

        break;
      case MyTextButton.a:
        textButton = 'A';
        break;
      default:
        textButton = 'X';
    }

    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      child: Text(
        textButton,
        style: TextStyle(
          color: color,
          fontSize: size * 0.6,
        ),
      ),
    );
  }
}
