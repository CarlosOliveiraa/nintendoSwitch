import 'package:flutter/material.dart';

import 'lamp_widget.dart';

//CORRESPONDE A COLUNA DE WIDGETS LAMP COM UMA ÚNICA LAMPADA ACESA.
class LampColumnLeft extends StatelessWidget {
  const LampColumnLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const LampWidget(
            lamp: Lamp.lampOn,
          ),
          //UTILIZAR LOOP COM FOR PARA REPETIÇÃO DE LAMPADA.
          //FOR(X=0; X>=3; X++)
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
