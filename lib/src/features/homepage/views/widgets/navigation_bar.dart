import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';
import 'package:mortgage_magic_demo/src/services/theme/app_theme.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onItemClick,
    required this.navbarItems,
  });

  final int currentIndex;
  final ValueChanged<int> onItemClick;
  final List<({Widget icon, String level})> navbarItems;

  @override
  Widget build(BuildContext context) {
    final colorTheme = context.color;
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SafeArea(
        child: SizedBox(
          height: 80,
          child: Column(
            children: [
              const Divider(height: 1),
              Expanded(
                child: Row(
                  children: navbarItems.indexed
                      .map(
                        (item) => Expanded(
                          child: InkWell(
                            onTap: () => onItemClick(item.$1),
                            child: Padding(
                              padding: vertical8,
                              child: NavItem(
                                icon: item.$2.icon,
                                label: item.$2.level,
                                isSelected: item.$1 == currentIndex,
                                selectedColor: colorTheme.primary,
                                unselectedColor: colorTheme.extra,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
  });

  final Widget icon;
  final String label;
  final bool isSelected;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? selectedColor : unselectedColor;
    return Theme(
      data: context.theme.copyWith(
        iconTheme: IconThemeData(color: color),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          icon,
          const SizedBox(height: 4),
          Center(
            child: Text(
              label,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: context.text.bodySmall?.copyWith(color: color),
            ),
          ),
        ],
      ),
    );
  }
}
