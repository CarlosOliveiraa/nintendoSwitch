import 'package:flutter/material.dart';

enum Lamp { lampOn, lampOff }

class LampWidget extends StatelessWidget {
  final Lamp lamp;
  final double size;

  const LampWidget({
    Key? key,
    this.size = 5.43,
    required this.lamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Decoration decoration;

    switch (lamp) {
      case Lamp.lampOn:
        decoration = const BoxDecoration(
          color: Color(0xffB6EBA5),
          shape: BoxShape.circle,
        );
        break;
      case Lamp.lampOff:
        decoration = const BoxDecoration(
          color: Color(0xff222327),
          shape: BoxShape.circle,
        );
        break;
      default:
    }

    return Container(
      width: size,
      height: size,
      decoration: decoration,
    );
  }
}
