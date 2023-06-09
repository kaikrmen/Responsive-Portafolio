import 'package:flutter/cupertino.dart';
import 'package:portafolio/responsive.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeighLight(
                counter: AnimatedCounter(
                  value: 20,
                  text: '+',
                ),
                label: "Github Procjects",
              ),
              HeighLight(
                counter: AnimatedCounter(
                  value: 25,
                  text: '+',
                ),
                label: "Procject's",
              )
            ],
          )
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 20,
              text: '+',
            ),
            label: "Github Procjects",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 25,
              text: '+',
            ),
            label: "Procject's",
          )
        ],
      ),
    );
  }
}