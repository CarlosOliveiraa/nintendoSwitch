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
      clipper: LogoClip(),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

class LogoClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final maxX = size.width;
    final maxY = size.height;
    var path = Path();
    path.moveTo(maxX * 0.5, maxY * 0.1);
    path.lineTo(0.0, maxY * 0.9);
    path.lineTo(maxX, maxY * 0.9);
    path.relativeConicTo(maxX * 50, maxY * 90, maxX, maxY / 1000, maxX * 10);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
