import 'package:flutter/material.dart';

import 'lamp_widget.dart';

//CORRESPONDE A COLUNA DE WIDGETS LAMP COM AS LÂMPADAS APAGADAS.

class LampColumnRigth extends StatelessWidget {
  const LampColumnRigth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.06,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const LampWidget(
            lamp: Lamp.lampOff,
          ),
          const LampWidget(
            lamp: Lamp.lampOff,
          ),
          const LampWidget(
            lamp: Lamp.lampOff,
          ),
          const LampWidget(
            lamp: Lamp.lampOff,
          )
        ],
      ),
    );
  }
}
