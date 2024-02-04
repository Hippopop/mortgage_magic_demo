import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/controllers/dashboard_controller.dart';

import 'sections/category.dart';
import 'sections/hero_carousel.dart';
import 'sections/offered_options_carousel.dart';
import 'sections/refer_friend_card.dart';
import 'sections/suggested_step.dart';

class _VerticalSpacer extends StatelessWidget {
  const _VerticalSpacer();

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(padding: vertical12);
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late final controller = DashboardController();
    return CustomScrollView(
      slivers: [
        DashboardHeroCarousel(
          bannerList: controller.bannerList,
        ),
        const _VerticalSpacer(),
        CategorySection(
          categoryList: controller.categoryList,
        ),
        const _VerticalSpacer(),
        const ReferFriendCard(),
        const _VerticalSpacer(),
        SuggestedStepSection(
          suggestedSteps: controller.suggestionSteps,
        ),
        OfferedOptionsCarousel(
          optionsList: controller.optionsList,
        ),
        const _VerticalSpacer(),
      ],
    );
  }
}
