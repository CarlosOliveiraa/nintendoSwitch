import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Widget? topChild;
  final Widget? rightChild;
  final Widget? downChild;
  final Widget? leftChild;

  const Buttons({
    Key? key,
    this.topChild,
    this.rightChild,
    this.downChild,
    this.leftChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.23,
      height: size.height * 0.23,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.31,
                    height: constraints.maxHeight * 0.31,
                    child: topChild,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                child: Center(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.31,
                    height: constraints.maxHeight * 0.31,
                    child: leftChild,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.31,
                    height: constraints.maxHeight * 0.31,
                    child: rightChild,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.30,
                    height: constraints.maxHeight * 0.30,
                    child: downChild,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
