import 'package:flutter/material.dart';

class AnalogButtonWidget extends StatelessWidget {
  final double size;

  const AnalogButtonWidget({
    Key? key,
    this.size = 58,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff686D70),
            Color(0xff050F11),
          ],
        ),
        border: Border.all(width: size * 0.017),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * 0.81,
          height: constraints.maxHeight * 0.81,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff050F11),
                Color(0xff686D70),
              ],
            ),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.92,
              height: constraints.maxHeight * 0.92,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: constraints.maxWidth * 0.021),
                color: Colors.white,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff676A6F),
                    Color(0xff242625),
                  ],
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}
