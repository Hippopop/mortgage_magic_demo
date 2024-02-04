import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/constants/design/border_radius.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/option/option_model.dart';
import 'package:mortgage_magic_demo/src/services/theme/extensions.dart';
import 'package:mortgage_magic_demo/src/services/theme/extensions/colors_theme.dart';
import 'package:mortgage_magic_demo/src/utils/widgets/svg_icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OfferedOptionsCarousel extends StatefulWidget {
  const OfferedOptionsCarousel({
    super.key,
    required this.optionsList,
  });
  final List<OptionModel> optionsList;

  @override
  State<OfferedOptionsCarousel> createState() => _OfferedOptionsCarouselState();
}

class _OfferedOptionsCarouselState extends State<OfferedOptionsCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 120,
              padEnds: false,
              disableCenter: true,
              enableInfiniteScroll: false,
              viewportFraction: 328 / MediaQuery.sizeOf(context).width,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.optionsList.map(
              (option) {
                return Padding(
                  padding: horizontal24,
                  child: OfferedOptionWidget(
                    option: option,
                  ),
                );
              },
            ).toList(),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSmoothIndicator(
                activeIndex: _currentIndex,
                count: widget.optionsList.length,
                effect: ExpandingDotsEffect(
                  dotWidth: 4,
                  dotHeight: 4,
                  expansionFactor: 4,
                  dotColor: context.color.primaryText,
                  activeDotColor: context.color.primaryText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OfferedOptionWidget extends StatelessWidget {
  const OfferedOptionWidget({
    super.key,
    required this.option,
  });

  final OptionModel option;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: br8,
        color: option.backgroundColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 24,
            left: 172,
            child: OptionIconOverlay(option: option),
          ),
          Positioned(
            child: Padding(
              padding: horizontal24 + vertical12,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      option.title,
                      style: context.text.headlineMedium?.copyWith(
                        color: context.color.theme,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.chevron_left),
                          label: const Text("Get Now"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionIconOverlay extends StatelessWidget {
  const OptionIconOverlay({
    super.key,
    required this.option,
  });

  final OptionModel option;

  @override
  Widget build(BuildContext context) {
    final circleDecoration = BoxDecoration(
      shape: BoxShape.circle,
      color: option.overlayColor,
      gradient: LinearGradient(
        colors: [
          option.overlayColor,
          option.overlayColor.withOpacity(0),
        ],
      ),
    );

    return SizedBox.square(
      dimension: 126,
      child: DecoratedBox(
        decoration: circleDecoration,
        child: Center(
          child: SizedBox.square(
            dimension: 94,
            child: DecoratedBox(
              decoration: circleDecoration,
              child: Center(
                child: SvgAssetIcon(
                  option.iconPath,
                  size: 46,
                  color: option.iconColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
