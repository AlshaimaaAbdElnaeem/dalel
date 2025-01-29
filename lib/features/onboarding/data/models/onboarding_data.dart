import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';

class OnboardingData {
  final String imageUrl;
  final String title;
  final String subTitle;

  OnboardingData(
      {required this.imageUrl, required this.title, required this.subTitle});
}

List<OnboardingData> onboardingData = [
  OnboardingData(
    imageUrl: Assets.imagesOnBoarding1,
    title: AppStrings.titleOnBoarding1,
    subTitle: AppStrings.subTitleOnBoarding1,
  ),
  OnboardingData(
    imageUrl: Assets.imagesOnBoarding2,
    title: AppStrings.titleOnBoarding2,
    subTitle: AppStrings.subTitleOnBoarding2,
  ),
  OnboardingData(
    imageUrl: Assets.imagesOnBoarding3,
    title: AppStrings.titleOnBoarding3,
    subTitle: AppStrings.subTitleOnBoarding3,
  ),
];
