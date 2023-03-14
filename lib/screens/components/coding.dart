import 'package:flutter/material.dart';

import '../../components/animated_progress_indicator.dart';
import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          title: 'JavaScript',
          percentage: 0.9,
        ),
        const AnimatedLinearProgressIndicator(
          title: 'NodeJS',
          percentage: 0.87,
        ),
        const AnimatedLinearProgressIndicator(
          title: 'TypeScript',
          percentage: 0.72,
        ),
        const AnimatedLinearProgressIndicator(
          title: 'Firebase',
          percentage: 0.6,
        ),
        const AnimatedLinearProgressIndicator(
          title: 'Dart',
          percentage: 0.5,
        ),
      ],
    );
  }
}