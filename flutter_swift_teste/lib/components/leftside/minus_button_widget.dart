import 'package:flutter/material.dart';

//WIDGET CORRESPONDENTE AO COMPONENTE DE BOTÃO - DA TELA HOME LADO AZUL
class MinusButtonWidget extends StatelessWidget {
  final double width;
  final double heigth;

  const MinusButtonWidget({
    Key? key,
    this.width = 19,
    this.heigth = 6.34,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff4A494E),
            Color(0xff525157),
          ],
        ),
      ),
    );
  }
}
