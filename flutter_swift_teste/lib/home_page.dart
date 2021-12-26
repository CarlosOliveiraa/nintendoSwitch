import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/rightside/right_side_widget.dart';
import 'components/screen/lamp_column_left_widget.dart';
import 'components/screen/lamp_column_rigth_widget.dart';
import 'components/screen/logo_widget.dart';
import 'components/screen/screen.dart';
import 'components/screen/side_widget.dart';
import 'sides/left_side_widget.dart';

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
      // body: LeftSideWidget(),
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
              child: Center(
                child: LogoWidget(
                  size: size.width * 0.38,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SideWidget(
                  width: size.width * 0.32,
                  height: size.height * 0.38,
                  side: Side.left,
                  child: const Center(
                    child: LeftSideWidget(),
                  ),
                ),
                const LampColumnLeft(),
                LogoWidget(
                  color: Colors.black,
                  size: size.width * 0.14,
                ),
                const LampColumnRigth(),
                SideWidget(
                  width: size.width * 0.32,
                  height: size.height * 0.38,
                  side: Side.right,
                  child: const RigthSideWidget(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
