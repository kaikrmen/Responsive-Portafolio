import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portafolio/constants.dart';
import 'package:portafolio/screens/components/skills.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                      AreaInfoText(
                        title: 'Residence',
                        text: 'Venezuela',
                      ),
                      AreaInfoText(
                      title: 'City',
                      text: 'Zulia',
                     ),
                      AreaInfoText(
                      title: 'Age',
                      text: '22',
                      ),
                    Skills(),
                    SizedBox(
                        height: defaultPadding
                    ),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(onPressed: (){

                    },
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                'DONWLOAD CV',
                                style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyLarge!.color
                                ),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset('assets/icons/download.svg')
                            ],
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(onPressed: () {

                          },
                              icon: SvgPicture.asset('assets/icons/linkedin.svg')
                          ),
                          IconButton(onPressed: () {

                          },
                              icon: SvgPicture.asset('assets/icons/github.svg')
                          ),
                          IconButton(onPressed: () {

                          },
                              icon: SvgPicture.asset('assets/icons/twitter.svg')
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}











