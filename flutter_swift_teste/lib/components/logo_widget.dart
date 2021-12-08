import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double size;

  const LogoWidget({
    Key? key,
    this.size = 129,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LogoClipper(),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
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
    double radius = 30;

    Path path1 = Path();

    path1.lineTo(0, maxY);
    path1.lineTo(0, maxY);
    path1.lineTo(maxX / 2.3, maxY);
    path1.lineTo(maxX / 2.3, 0);

    path1.addRRect(RRect.fromRectAndCorners(
      Rect.fromLTWH(10, maxY - 145, 50, 131),
      topLeft: Radius.circular(radius),
      bottomLeft: Radius.circular(radius),
    ));

    path1.addRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(21, 40, 30, 30),
        Radius.circular(radius),
      ),
    );
    Path path2 = Path();

    path2.lineTo(0, maxY);
    path2.lineTo(0, maxY);
    path2.lineTo(maxX / .5, maxY);
    path2.lineTo(maxX / .5, 0);

    path2.addRRect(RRect.fromRectAndRadius(
        const Rect.fromLTWH(15, 70, 37.3, 37.3), Radius.circular(radius)));

    path1.addPath(path2, Offset(maxX - 70, 0));

    return path1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
