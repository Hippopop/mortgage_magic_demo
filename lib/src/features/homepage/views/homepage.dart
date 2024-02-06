import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/views/dashboard.dart';
import 'package:mortgage_magic_demo/src/utils/widgets/svg_icon.dart';
import 'package:mortgage_magic_demo/src/constants/assets/assets.dart';

import 'widgets/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(
        currentIndex: currentPageIndex,
        onItemClick: (value) => pageController.animateToPage(
          value,
          duration: Durations.medium2,
          curve: Curves.easeIn,
        ),
        navbarItems: [
          (icon: SvgAssetIcon(NavigationAssets.dashboard), level: "Dashboard"),
          (icon: SvgAssetIcon(NavigationAssets.cases), level: "My Cases"),
          (icon: SvgAssetIcon(NavigationAssets.chat), level: "Chat"),
          (icon: SvgAssetIcon(NavigationAssets.credit), level: "Credit Matrix"),
          (icon: SvgAssetIcon(NavigationAssets.more), level: "More"),
        ],
      ),
      body: PageView(
        onPageChanged: (value) => setState(() {
          currentPageIndex = value;
        }),
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          DashboardScreen(),
          EmptyPage(
            title: "My Cases",
          ),
          EmptyPage(
            title: "Chat",
          ),
          EmptyPage(
            title: "Credit Matrix",
          ),
          EmptyPage(
            title: "More",
          ),
        ],
      ),
    );
  }
}

class EmptyPage extends StatelessWidget {
  const EmptyPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: Text(title),
      ),
    );
  }
}
