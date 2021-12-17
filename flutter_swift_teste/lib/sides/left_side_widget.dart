import 'package:flutter/material.dart';
import 'package:flutter_swift_teste/components/analog.dart';
import 'package:flutter_swift_teste/components/button_widget.dart';
import 'package:flutter_swift_teste/components/minus_button_widget.dart';

class LeftSideWidget extends StatelessWidget {
  const LeftSideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //CRIAR UM PADDING RESPONSÍVEL.
    //CALUCULAR O VALOR DA LARGRURA DO ESPAÇAMENTO DIVIDIDO PELA LARGURA DA LADO = 12 / 375
    return Padding(
      padding: EdgeInsets.all(size.width * 0.032),
      //CRIAR UMA COLUNA PARA RECEBER OS COMPONENTES.
      //DENTRO DA COLUNA, PRECISAMOS POSICIONAR CADA COMPONENTE. IREMOS UTILIZAR O ALIGN
      child: Stack(
        //BOTAO DE MENOS
        //ANALOGICO
        //DIRECIONAIS
        //SOUND
        children: [
          Align(
            //USAR RESPONSIVIDADE.
            child: MinusButtonWidget(
              width: size.width * 0.05,
            ),
            alignment: Alignment.topLeft,
          ),
          Align(
            //USAR RESPONSIVIDADE.
            child: MinusButtonWidget(
              width: size.width * 0.05,
            ),
          ),
          Align(
            //USAR RESPONSIVIDADE.
            child: MinusButtonWidget(
              width: size.width * 0.05,
            ),
          ),
          Align(
            //USAR RESPONSIVIDADE.
            child: MinusButtonWidget(
              width: size.width * 0.05,
            ),
          ),
          Align(
            //USAR RESPONSIVIDADE.
            child: MinusButtonWidget(
              width: size.width * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
