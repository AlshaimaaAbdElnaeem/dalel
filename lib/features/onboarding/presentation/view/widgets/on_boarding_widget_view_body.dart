import 'package:dalel/features/onboarding/data/models/onboarding_data.dart';
import 'package:dalel/features/onboarding/presentation/view/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/app_text_style.dart';

class OnBoardingWidgetViewBody extends StatelessWidget {
  const OnBoardingWidgetViewBody({
    super.key,
    required this.pageController,
    this.onPageChanged,
  });

  final PageController pageController;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: PageView.builder(
          onPageChanged: onPageChanged,
          physics: BouncingScrollPhysics(),
          itemCount: onboardingData.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SvgPicture.asset(
                  onboardingData[index].imageUrl,
                  width: 343.w,
                  height: 290.h,
                ),
                CustomSmoothPageIndicator(pageController: pageController),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  onboardingData[index].title,
                  style: AppTextStyle.textStyle24,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  onboardingData[index].subTitle,
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
