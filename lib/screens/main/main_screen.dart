import 'package:flutter/material.dart';
import 'package:portafolio/constants.dart';

import '../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          //mitad y mitad
          children: [
            Expanded(
              flex: 2, //75%
              child: SideMenu(),
            ),

            Expanded(
              flex: 7,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


