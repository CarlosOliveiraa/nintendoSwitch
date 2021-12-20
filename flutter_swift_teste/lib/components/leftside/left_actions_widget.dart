import 'package:flutter/material.dart';
import 'package:flutter_swift_teste/components/others/button_widget.dart';

class LeftActionWidget extends StatelessWidget {
  const LeftActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.13,
      height: size.width * 0.23,
      child: Stack(
        children: const [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ButtonWidget(
              button: Button.up,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ButtonWidget(
              button: Button.up,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ButtonWidget(
              button: Button.up,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ButtonWidget(
              button: Button.up,
            ),
          ),
        ],
      ),
    );
  }
}
