import 'package:flutter/material.dart';
import 'package:flutter_swift_teste/components/analog.dart';
import 'package:flutter_swift_teste/components/button_widget.dart';

class LeftSideDirectionalWidget extends StatelessWidget {
  const LeftSideDirectionalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 157,
      alignment: Alignment.center,
      child: Column(
        children: [
          const AnalogButtonWidget(),
          const SizedBox(
            height: 10,
          ),
          const ButtonWidget(
            button: Button.up,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ButtonWidget(
                button: Button.left,
              ),
              ButtonWidget(
                button: Button.right,
              ),
            ],
          ),
          const ButtonWidget(
            button: Button.down,
          ),
        ],
      ),
    );
  }
}
