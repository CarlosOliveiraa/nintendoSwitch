import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double size;
  final Color color;

  const LogoWidget({
    Key? key,
    this.size = 129,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (logo == Logo.bigLogo) {
    //   decoration = BoxDecoration(
    //     borderRadius: BorderRadius.circular(30),
    //     color: Colors.white,
    //   );
    // } else if (logo == Logo.smallLogo) {
    //   decoration = BoxDecoration(
    //     borderRadius: BorderRadius.circular(30),
    //     color: Colors.black,
    //   );
    // }

    return ClipPath(
      clipper: LogoClipper(),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size * 0.23),
          color: color,
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
    final centralPositionLeftCircle = Offset(maxX * 0.24, maxY * 0.30);
    final centralFromPositionRigthCircle = Offset(maxX * 0.78, maxY * 0.55);
    final rectFromCircleLeft = Rect.fromCenter(
      center: centralPositionLeftCircle,
      width: maxX * 0.18,
      height: maxY * 0.18,
    );
    final rectFromCircleRigth = Rect.fromCenter(
      center: centralFromPositionRigthCircle,
      width: maxX * 0.20,
      height: maxY * 0.20,
    );

    double radius = maxX * 0.15;

    Path path = Path();

    //BACKGROUND DA LOGO COM TAMANHO DE 129X129
    path.lineTo(0, maxY);
    path.lineTo(maxX, maxY);
    path.lineTo(maxX, 0);

    //DIVISÃO CENTRAL
    path.addRect(
      Rect.fromLTWH(maxX * 0.46, 0, maxX * 0.1, maxY * 1),
    );

    //CORTE ESQUERDO
    path.addRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTRB(
          maxX * 0.07,
          maxY * 0.07,
          maxX * 0.39,
          maxY * 0.93,
        ),
        topLeft: Radius.circular(radius),
        bottomLeft: Radius.circular(radius),
      ),
    );

    //CORTE CIRCULAR ESQUERDO
    // path.addRRect(
    //   RRect.fromRectAndRadius(
    //     const Rect.fromLTWH(25, 40, 25, 25),
    //     Radius.circular(radius),
    //   ),
    // );

    path.addOval(rectFromCircleLeft);
    //CORTE CIRCULAR DIREITO
    path.addOval(rectFromCircleRigth);
    // path.addRRect(
    //   RRect.fromRectAndRadius(
    //     const Rect.fromLTWH(108, 80, 32, 32),
    //     Radius.circular(radius),
    //   ),
    // );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
