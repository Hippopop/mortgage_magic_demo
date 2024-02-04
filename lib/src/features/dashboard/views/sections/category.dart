import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/category/category_model.dart';
import 'package:mortgage_magic_demo/src/services/theme/app_theme.dart';
import 'package:mortgage_magic_demo/src/utils/widgets/svg_icon.dart';

/// This widget will take any amount of [CategoryData]. But it will only
/// show 7 of them on the [ListView]. If you have 8 or more. It will show
/// a [See More] button.
class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    required this.categoryList,
  });

  final List<CategoryData> categoryList;

  @override
  Widget build(BuildContext context) {
    final shortenedList = categoryList.take(8).toList();
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          itemBuilder: (context, index) {
            final categoryData = categoryList[index];
            if (index == 7) {
              return CategoryItemWidget(
                title: "See All",
                onTap: () {
                  //TODO: Handle what will happend when clicked on the [See All] button.
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  size: 28,
                ),
              );
            }
            return CategoryItemWidget(
              title: categoryData.name,
              svgPath: categoryData.iconPath,
              onTap: () {
                //TODO: Handle what will happend when clicked on the [categoryData] item.
              },
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 20),
          itemCount: shortenedList.length,
          padding: horizontal24,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    this.icon,
    this.svgPath,
    required this.title,
    required this.onTap,
  }) : assert(
          (icon != null || svgPath != null),
          "Either provide the desired icon or put the icon(.svg) path!",
        );

  final String title;
  final Widget? icon;
  final String? svgPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: all8,
              child: Card(
                elevation: 3,
                margin: emptyPadding,
                shape: const CircleBorder(),
                child: Padding(
                  padding: all6,
                  child: Center(
                    child: icon ??
                        SvgAssetIcon(
                          svgPath!,
                          size: 28,
                        ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                title,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: context.text.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
