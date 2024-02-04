import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mortgage_magic_demo/src/constants/assets/assets.dart';
import 'package:mortgage_magic_demo/src/constants/design/border_radius.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';
import 'package:mortgage_magic_demo/src/services/theme/extensions.dart';
import 'package:mortgage_magic_demo/src/services/theme/extensions/colors_theme.dart';

class ReferFriendCard extends StatelessWidget {
  const ReferFriendCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: horizontal24,
        child: LimitedBox(
          maxHeight: 100,
          child: AspectRatio(
            aspectRatio: 312 / 92,
            child: Card(
              elevation: 0,
              margin: emptyPadding,
              color: context.color.mainAccent,
              shape: const RoundedRectangleBorder(borderRadius: br8),
              child: Padding(
                padding: horizontal20 + vertical16,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAssets.referIcon,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Padding(
                        padding: emptyPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Refer a friend",
                              style: context.text.headlineSmall?.copyWith(
                                // height: 1.2,
                                color: context.color.theme,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Refer a friend with your referral code and get exclusive from us. Enjoy!",
                              style: context.text.bodySmall?.copyWith(
                                // height: 1.3,
                                color: context.color.theme,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
