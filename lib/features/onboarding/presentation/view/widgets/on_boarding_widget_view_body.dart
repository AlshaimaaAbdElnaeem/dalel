import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/onboarding/presentation/view/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_style.dart';

class OnBoardingWidgetViewBody extends StatelessWidget {
  const OnBoardingWidgetViewBody({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: PageView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: 3,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SvgPicture.asset(
                  Assets.imagesOnBoarding1,
                  width: 343.w,
                  height: 290.h,
                ),
                CustomSmoothPageIndicator(pageController: pageController),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  AppStrings.titleOnBoarding1,
                  style: AppTextStyle.textStyle24,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  AppStrings.subTitleOnBoarding1,
                  style: AppTextStyle.textStyle16,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }),
    );
  }
}
