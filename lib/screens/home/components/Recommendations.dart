import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portafolio/screens/home/components/recommendation_card.dart';

import '../../../constants.dart';
import '../../../models/Recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),

        SizedBox(
          height: 300.0,
          child: ListView.builder(
            primary: false,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: demo_recommendations.length,
            itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: RecommendationCard(
                      recommendation: demo_recommendations[index],
                    ),
                  );
                },),
        )

        ],
      ),
    );
  }
}