import 'package:flutter/material.dart';
import 'package:mortgage_magic_demo/src/constants/assets/assets.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/banner/banner_model.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/category/category_model.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/option/option_model.dart';
import 'package:mortgage_magic_demo/src/features/dashboard/models/suggested_step/suggested_step_data.dart';

class DashboardController {
  final bannerList = [
    BannerModel(
      title: "How much I can borrow",
      subTitle: "Find out what you can afford to borrow",
      imageLink: BannerAssets.one,
      titleColor: const Color(0xff880E4F),
      subTitleColor: const Color(0xffC2185B),
      backgroundColor: const Color(0xffFCE4EC),
    ),
    BannerModel(
      title: "Best mortgage rates",
      subTitle: "See what are the best available mortgage",
      imageLink: BannerAssets.two,
      titleColor: const Color(0xff004D40),
      subTitleColor: const Color(0xff2D6E63),
      backgroundColor: const Color(0xffE0F2F1),
    ),
    BannerModel(
      title: "How much I can borrow",
      subTitle: "Find out what you can afford to borrow",
      imageLink: BannerAssets.one,
      titleColor: const Color(0xff880E4F),
      subTitleColor: const Color(0xffC2185B),
      backgroundColor: const Color(0xffFCE4EC),
    ),
    BannerModel(
      title: "Best mortgage rates",
      subTitle: "See what are the best available mortgage",
      imageLink: BannerAssets.two,
      titleColor: const Color(0xff004D40),
      subTitleColor: const Color(0xff2D6E63),
      backgroundColor: const Color(0xffE0F2F1),
    ),
    BannerModel(
      title: "How much I can borrow",
      subTitle: "Find out what you can afford to borrow",
      imageLink: BannerAssets.one,
      titleColor: const Color(0xff880E4F),
      subTitleColor: const Color(0xffC2185B),
      backgroundColor: const Color(0xffFCE4EC),
    ),
    BannerModel(
      title: "Best mortgage rates",
      subTitle: "See what are the best available mortgage",
      imageLink: BannerAssets.two,
      titleColor: const Color(0xff004D40),
      subTitleColor: const Color(0xff2D6E63),
      backgroundColor: const Color(0xffE0F2F1),
    ),
  ];

  final categoryList = [
    CategoryData(name: "Mortgage", iconPath: CategoryAssets.mortgage),
    CategoryData(name: "Insurance", iconPath: CategoryAssets.insurance),
    CategoryData(name: "Commercial", iconPath: CategoryAssets.commercial),
    CategoryData(name: "Personal Loan", iconPath: CategoryAssets.personal),
    CategoryData(name: "Car Loan", iconPath: CategoryAssets.car),
    CategoryData(name: "Credit Card", iconPath: CategoryAssets.credit),
    CategoryData(name: "Dev. Finance", iconPath: CategoryAssets.finance),
    /* 
    Next two options are just extra, to bring the [see more] button on the category section!
    Check the [CategorySection] widget for more information.
    */
    CategoryData(name: "Dev. Finance", iconPath: CategoryAssets.finance),
    CategoryData(name: "Dev. Finance", iconPath: CategoryAssets.finance),
  ];

  final suggestionSteps = [
    SuggestedStepData(
      title: "Action required",
      description:
          "Check required info, e.g. E-ID, credit report, client agreement, etc.",
      iconPath: SuggestionAssets.action,
    ),
    SuggestedStepData(
      title: "Get a quote",
      description:
          "Secure your desired loan or insurance with our expert financial advisor.",
      iconPath: SuggestionAssets.quote,
    ),
    SuggestedStepData(
      title: "My credit report",
      description:
          "Access your credit report, score, and learning tips for improvement.",
      iconPath: SuggestionAssets.credit,
    ),
    SuggestedStepData(
      title: "How much I can borrow",
      description: "Discover your borrowing potential from lenders.",
      iconPath: SuggestionAssets.borrow,
    ),
    SuggestedStepData(
      title: "Lowest rates",
      description: "Stay updated with today's lowest mortgage rates.",
      iconPath: SuggestionAssets.rate,
    ),
  ];

  final optionsList = [
    OptionModel(
      title: "Life Insurance",
      iconPath: OptionAssets.life,
      iconColor: const Color(0xff9870FF),
      overlayColor: const Color(0xff5833B8),
      backgroundColor: const Color(0xff2E224C),
    ),
    OptionModel(
      title: "Business Protection",
      iconPath: OptionAssets.business,
      iconColor: const Color(0xff07AD5D),
      overlayColor: const Color(0xff118A50),
      backgroundColor: const Color(0xff10462D),
    ),
    OptionModel(
      title: "Private Medical Insurance",
      iconPath: OptionAssets.medical,
      iconColor: const Color(0xff5C95FF),
      overlayColor: const Color(0xff1E54B7),
      backgroundColor: const Color(0xff102C60),
    ),
    OptionModel(
      title: "Life Insurance",
      iconPath: OptionAssets.life,
      iconColor: const Color(0xff9870FF),
      overlayColor: const Color(0xff5833B8),
      backgroundColor: const Color(0xff2E224C),
    ),
    OptionModel(
      title: "Business Protection",
      iconPath: OptionAssets.business,
      iconColor: const Color(0xff07AD5D),
      overlayColor: const Color(0xff118A50),
      backgroundColor: const Color(0xff10462D),
    ),
    OptionModel(
      title: "Private Medical Insurance",
      iconPath: OptionAssets.medical,
      iconColor: const Color(0xff5C95FF),
      overlayColor: const Color(0xff1E54B7),
      backgroundColor: const Color(0xff102C60),
    ),
    OptionModel(
      title: "Life Insurance",
      iconPath: OptionAssets.life,
      iconColor: const Color(0xff9870FF),
      overlayColor: const Color(0xff5833B8),
      backgroundColor: const Color(0xff2E224C),
    ),
    OptionModel(
      title: "Business Protection",
      iconPath: OptionAssets.business,
      iconColor: const Color(0xff07AD5D),
      overlayColor: const Color(0xff118A50),
      backgroundColor: const Color(0xff10462D),
    ),
    OptionModel(
      title: "Private Medical Insurance",
      iconPath: OptionAssets.medical,
      iconColor: const Color(0xff5C95FF),
      overlayColor: const Color(0xff1E54B7),
      backgroundColor: const Color(0xff102C60),
    ),
  ];
}
