import 'package:flutter/material.dart';
import 'package:flutter_swift_teste/components/lamp_widget.dart';

class LampColumnRigth extends StatelessWidget {
  const LampColumnRigth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const LampWidget(
          lamp: Lamp.lampOff,
        ),
        const SizedBox(
          height: 5,
        ),
        const LampWidget(
          lamp: Lamp.lampOff,
        ),
        const SizedBox(
          height: 5,
        ),
        const LampWidget(
          lamp: Lamp.lampOff,
        ),
        const SizedBox(
          height: 5,
        ),
        const LampWidget(
          lamp: Lamp.lampOff,
        )
      ],
    );
  }
}
