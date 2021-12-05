import 'package:flutter/material.dart';

class SoundWidget extends StatelessWidget {
  final double size;

  const SoundWidget({
    Key? key,
    this.size = 23.55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff7B8287),
            Color(0xff324144),
          ],
        ),
      ),
      child: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth * 0.83,
            height: constraints.maxHeight * 0.83,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4A494E),
                  Color(0xff525157),
                ],
              ),
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return Center(
                child: Container(
                  width: constraints.maxWidth * 0.72,
                  height: constraints.maxHeight * 0.72,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff182022),
                  ),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
