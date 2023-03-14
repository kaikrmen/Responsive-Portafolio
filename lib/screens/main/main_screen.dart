import 'package:flutter/material.dart';
import 'package:portafolio/constants.dart';

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
              child: Drawer(
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.23,
                      child: Container(
                        color: Color(0xFF242430),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
                            ),
                            Text(
                                'Jane Doe',
                                 style: Theme.of(context).textTheme.subtitle1
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
