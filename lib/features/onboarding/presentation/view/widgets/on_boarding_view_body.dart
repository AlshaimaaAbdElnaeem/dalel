import 'package:dalel/core/functions/custom_navigation.dart';
import 'package:dalel/core/routers/router_constant.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_text_button.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_data.dart';
import 'package:dalel/features/onboarding/presentation/view/widgets/on_boarding_widget_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 40.h,
          ),
          CustomTextButton(
            btnName: AppStrings.skip,
             onPressed: () {
                        customReplacementNavigtion(context, sinUpView);
                      },
          ),
          OnBoardingWidgetViewBody(
            pageController: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          currentIndex == onboardingData.length - 1
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      btnName: AppStrings.createAcount,
                      onPressed: () {
                        customReplacementNavigtion(context, sinUpView);
                      },
                    ),
                    Center(
                      child: CustomTextButton(
                        btnName: AppStrings.loginNow,
                      ),
                    ),
                  ],
                )
              : CustomButton(
                  btnName: AppStrings.next,
                  onPressed: () {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.bounceInOut,
                    );
                  },
                ),
          SizedBox(
            height: 17.sp,
          ),
        ],
      ),
    );
  }
}
