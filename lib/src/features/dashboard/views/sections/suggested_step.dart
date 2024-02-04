import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/constants/design/border_radius.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/suggested_step/suggested_step_data.dart';
import 'package:mortgage_magic_demo/src/services/theme/app_theme.dart';
import 'package:mortgage_magic_demo/src/utils/widgets/svg_icon.dart';

class SuggestedStepSection extends StatelessWidget {
  const SuggestedStepSection({
    super.key,
    required this.suggestedSteps,
  });

  final List<SuggestedStepData> suggestedSteps;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: horizontal24,
      sliver: SliverList(
        delegate: SliverChildListDelegate.fixed(
          [
            Text(
              "Others things you may need",
              style: context.text.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            for (SuggestedStepData item in suggestedSteps) ...[
              const SizedBox(height: 8),
              SingleSuggestionCard(
                stepData: item,
                onTap: () {
                  print("clicked");
                  //TODO: Handle what happens when clicked on [item] suggestion step!
                },
              ),
              const SizedBox(height: 8),
            ],
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SingleSuggestionCard extends StatelessWidget {
  const SingleSuggestionCard({
    super.key,
    required this.stepData,
    required this.onTap,
  });

  final SuggestedStepData stepData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 100,
      child: AspectRatio(
        aspectRatio: 312 / 92,
        child: Material(
          color: context.color.theme,
          shape: RoundedRectangleBorder(
            borderRadius: br8,
            side: BorderSide(
              color: context.color.primaryBackground,
            ),
          ),
          child: InkWell(
            borderRadius: br8,
            onTap: onTap,
            child: Padding(
              padding: all16,
              child: Row(
                children: [
                  SvgAssetIcon(
                    stepData.iconPath,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          stepData.title,
                          style: context.text.bodyMedium?.copyWith(
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          stepData.description,
                          style: context.text.bodySmall?.copyWith(height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  const SizedBox.square(
                    dimension: 24,
                    child: Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
