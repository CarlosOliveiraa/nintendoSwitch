import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/minus_button_widget.dart';
import '../components/sound_widget.dart';
import 'left_side_directional_widget.dart';

class LeftSideWidget extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry? padding;

  const LeftSideWidget({
    Key? key,
    this.padding,
    this.width = 95.56,
    this.height = 231.09,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MinusButtonWidget(),
          LeftSideDirectionalWidget(),
          SoundWidget()
        ],
      ),
    );
  }
}
