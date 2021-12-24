import 'package:flutter/material.dart';

enum Direction { up, left, down, right }

class ArrowWidget extends StatelessWidget {
  final double size;
  final Direction direction;
  final Color inColor;

  const ArrowWidget(
    this.direction, {
    Key? key,
    this.size = 9,
    this.inColor = const Color(0xff182022),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    late int directionArrow;

    switch (direction) {
      case Direction.up:
        directionArrow = 0;
        break;
      case Direction.right:
        directionArrow = 1;
        break;
      case Direction.down:
        directionArrow = 2;
        break;
      case Direction.left:
        directionArrow = 3;
        break;
      default:
        directionArrow = 0;
    }

    return Center(
      child: RotatedBox(
        quarterTurns: directionArrow,
        child: ClipPath(
          clipper: LogoClipper(),
          child: Container(
            width: size,
            height: size,
            color: inColor,
          ),
        ),
      ),
    );
  }
}

class LogoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final maxX = size.width;
    final maxY = size.height;
    var path = Path();

    path.moveTo(maxX * 0.5, maxY * 0.1);
    path.lineTo(0.0, maxY * 0.9);
    path.lineTo(maxX, maxY * 0.9);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
