import 'package:flutter/material.dart';
import 'package:flutter_swift_teste/components/arrow_widget.dart';
import 'package:flutter_swift_teste/components/logo_widget.dart';

import 'components/analog.dart';
import 'components/button_widget.dart';
import 'components/home_widget.dart';
import 'components/minus_button_widget.dart';
import 'components/plus_button_widget.dart';
import 'components/screen.dart';
import 'components/side_widget.dart';
import 'components/sound_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Colors.black,
      // body: Center(
      //   child: LogoWidget(
      //     size: 160,
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff4B5054),
              Color(0xff272B2E),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 25),
            Screen(
              width: size.width * 0.88,
              height: size.height * 0.53,
              child: const Center(
                  child: LogoWidget(
                size: 160,
              )),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideWidget(
                  width: size.width * 0.32,
                  height: size.height * 0.38,
                  side: Side.left,
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Positioned(
                        top: 14.5,
                        left: 14.5,
                        right: 89.67,
                        bottom: 236.53,
                        child: MinusButtonWidget(),
                      ),
                      const Positioned(
                        top: 45.77,
                        left: 37.59,
                        right: 28.53,
                        bottom: 154.06,
                        child: AnalogButtonWidget(),
                      ),
                      const Positioned(
                        top: 118.72,
                        left: 51.63,
                        right: 43.48,
                        bottom: 110.56,
                        child: ButtonWidget(button: Button.up),
                      ),
                      const Positioned(
                        top: 146.36,
                        left: 23.1,
                        right: 72.01,
                        bottom: 82.92,
                        child: ButtonWidget(button: Button.left),
                      ),
                      const Positioned(
                        top: 146.36,
                        left: 81.07,
                        right: 14.04,
                        bottom: 82.92,
                        child: ButtonWidget(button: Button.right),
                      ),
                      const Positioned(
                        top: 174.0,
                        left: 51.63,
                        right: 43.48,
                        bottom: 55.28,
                        child: ButtonWidget(button: Button.down),
                      ),
                      const Positioned(
                        top: 221.12,
                        bottom: 12.69,
                        left: 13.59,
                        right: 86.05,
                        child: SoundWidget(),
                      ),
                    ],
                  ),
                ),
                SideWidget(
                  width: size.width * 0.32,
                  height: size.height * 0.38,
                  side: Side.right,
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Positioned(
                        top: 8.16,
                        left: 88.77,
                        right: 13.59,
                        bottom: 230.19,
                        child: PlusButtonWidget(),
                      ),
                      const Positioned(
                        top: 32.62,
                        left: 43.03,
                        right: 52.08,
                        bottom: 196.66,
                        child: ButtonWidget(
                          button: Button.x,
                        ),
                      ),
                      const Positioned(
                        top: 60.27,
                        left: 14.49,
                        right: 80.62,
                        bottom: 169.02,
                        child: ButtonWidget(
                          button: Button.y,
                        ),
                      ),
                      const Positioned(
                        top: 60.27,
                        left: 72.92,
                        right: 22.19,
                        bottom: 169.02,
                        child: ButtonWidget(
                          button: Button.a,
                        ),
                      ),
                      const Positioned(
                        top: 87.91,
                        left: 43.03,
                        right: 52.08,
                        bottom: 141.37,
                        child: ButtonWidget(
                          button: Button.b,
                        ),
                      ),
                      const Positioned(
                        top: 131.86,
                        left: 28.53,
                        right: 37.59,
                        bottom: 68.42,
                        child: AnalogButtonWidget(),
                      ),
                      const Positioned(
                          top: 217.95,
                          left: 80.16,
                          right: 14.04,
                          bottom: 10.42,
                          child: HomeWidget()),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
