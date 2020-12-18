import 'package:flutter/material.dart';
import 'package:share_ute/react_solution/widgets/widgets.dart';

class ReactSolutionForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EmotionIcons(),
            const SizedBox(
              width: 3,
            ),
            EmotionTitle(),
          ],
        ),
        EmotionButton(),
      ],
    );
  }
}
