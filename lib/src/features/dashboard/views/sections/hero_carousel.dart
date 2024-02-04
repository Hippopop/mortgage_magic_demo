import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/banner/banner_model.dart';
import 'package:mortgage_magic_demo/src/services/theme/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardHeroCarousel extends StatefulWidget {
  const DashboardHeroCarousel({
    super.key,
    required this.bannerList,
  });
  final List<BannerModel> bannerList;

  @override
  State<DashboardHeroCarousel> createState() => _DashboardHeroCarouselState();
}

class _DashboardHeroCarouselState extends State<DashboardHeroCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.viewPaddingOf(context).top;
    final totalAspectRatio = 360 / (172 + statusBarHeight);
    return SliverToBoxAdapter(
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.hardEdge,
        children: [
          ColoredBox(
            color: Colors.grey.shade200,
            child: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    padEnds: false,
                    autoPlay: true,
                    viewportFraction: 1,
                    disableCenter: true,
                    enableInfiniteScroll: false,
                    aspectRatio: totalAspectRatio,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: widget.bannerList.map(
                    (banner) {
                      return HeroCarouselBanner(
                        bannerModel: banner,
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: widget.bannerList.length,
              effect: ExpandingDotsEffect(
                dotWidth: 4,
                dotHeight: 4,
                expansionFactor: 3,
                dotColor: context.color.theme,
                activeDotColor: context.color.theme,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeroCarouselBanner extends StatelessWidget {
  const HeroCarouselBanner({
    super.key,
    required this.bannerModel,
  });

  final BannerModel bannerModel;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: bannerModel.backgroundColor,
      child: SafeArea(
        top: true,
        left: false,
        right: false,
        bottom: false,
        child: Padding(
          padding: horizontal40,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Positioned(
                bottom: 0,
                child: Image.asset(
                  bannerModel.imageLink,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                child: Padding(
                  padding: vertical8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 133,
                        child: Text(
                          bannerModel.title,
                          style: context.text.headlineMedium?.copyWith(
                            color: bannerModel.titleColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        child: Text(
                          bannerModel.subTitle,
                          style: context.text.titleSmall?.copyWith(
                            color: bannerModel.subTitleColor,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            foregroundColor: bannerModel.titleColor,
                            tapTargetSize: MaterialTapTargetSize.padded,
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Find Out"),
                              Icon(
                                Icons.chevron_right,
                                size: 16,
                              ),
                            ],
                          ),
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
    );
  }
}
