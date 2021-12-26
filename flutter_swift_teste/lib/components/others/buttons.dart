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
      height: size.width * 0.23,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Column(
              children: [
                SizedBox(
                  width: constraints.maxWidth * .31,
                  height: constraints.maxHeight * .31,
                  child: topChild,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth * .31,
                      height: constraints.maxHeight * .31,
                      child: leftChild,
                    ),
                    SizedBox(
                      width: constraints.maxWidth * .31,
                      height: constraints.maxHeight * .31,
                      child: rightChild,
                    ),
                  ],
                ),
                SizedBox(
                  width: constraints.maxWidth * .31,
                  height: constraints.maxHeight * .31,
                  child: downChild,
                )
              ],
            ),
          );
          // return Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Positioned(
          //       top: 0,
          //       child: Center(
          //         child: SizedBox(
          //           width: constraints.maxWidth * 0.31,
          //           height: constraints.maxHeight * 0.31,
          //           child: topChild,
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //       left: 0,
          //       child: Center(
          //         child: SizedBox(
          //           width: constraints.maxWidth * 0.31,
          //           height: constraints.maxHeight * 0.31,
          //           child: leftChild,
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //       right: 0,
          //       child: Center(
          //         child: SizedBox(
          //           width: constraints.maxWidth * 0.31,
          //           height: constraints.maxHeight * 0.31,
          //           child: rightChild,
          //         ),
          //       ),
          //     ),
          //     Positioned(
          //       bottom: 0,
          //       child: Center(
          //         child: SizedBox(
          //           width: constraints.maxWidth * 0.30,
          //           height: constraints.maxHeight * 0.30,
          //           child: downChild,
          //         ),
          //       ),
          //     ),
          //   ],
          // );
        },
      ),
    );
  }
}
