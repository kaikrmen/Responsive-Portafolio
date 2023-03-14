import 'package:flutter/material.dart';
import 'package:portafolio/constants.dart';

import '../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mitad y mitad
          children: [
            Expanded(
              flex: 2, //75%
              child: SideMenu(),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...children,

                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}


