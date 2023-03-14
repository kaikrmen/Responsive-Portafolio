import 'package:flutter/material.dart';
import 'package:portafolio/constants.dart';
import 'package:portafolio/screens/main/main_screen.dart';

import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Text(
            'Recommendations',
            style: Theme.of(context).textTheme.headlineSmall,
        ),

        Container(
          width: 400,
          padding: EdgeInsets.all(defaultPadding),
          color: secondaryColor,
        ),
      ],
    );
  }
}




