import 'package:dalel/core/functions/custom_navigation.dart';
import 'package:dalel/core/routers/router_constant.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_style.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    delayed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          textAlign: TextAlign.center,
          AppStrings.appName,
          style: AppTextStyle.textStyle64,
        )
      ],
    );
  }

 Future<void> delayed() {
    return Future.delayed(Duration(seconds: 3), () {
    customNavigtion(context,onBoardingView);
  });
  }

}
