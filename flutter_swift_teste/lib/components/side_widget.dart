import 'package:flutter/material.dart';

enum Side { left, right }

class SideWidget extends StatelessWidget {
  final Side side;
  final double width;
  final double height;
  final Widget? child;

  const SideWidget({
    Key? key,
    this.child,
    required this.side,
    this.width = 123,
    this.height = 257,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    late Decoration decoration;

    switch (side) {
      case Side.left:
        decoration = const BoxDecoration(
          color: Color(0xff00BDDD),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(80),
          ),
        );
        break;
      case Side.right:
        decoration = const BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
          ),
        );
        break;
      default:
    }

    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: child,
    );
  }
}
