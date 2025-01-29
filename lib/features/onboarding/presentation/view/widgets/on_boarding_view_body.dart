import 'package:dalel/features/onboarding/presentation/view/widgets/custom_text_button.dart';
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
          CustomTextButton(),
          OnBoardingWidgetViewBody(pageController: pageController),
          CustomButton(),
          SizedBox(
            height: 17.sp,
          ),
        ],
      ),
    );
  }
}
