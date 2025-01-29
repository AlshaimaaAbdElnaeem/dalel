import 'package:flutter/material.dart';

import '../utils/app_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed, required this.btnName,
  });
  final void Function()? onPressed;
  final String btnName;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          btnName,
          style: AppTextStyle.textStyle16,
        ),
      ),
    );
  }
}
