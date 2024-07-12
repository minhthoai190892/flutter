import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';

class RoundButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundButtonWidget(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.maxFinite,
      elevation: 0,
      color: TColor.primary,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Text(
        title,
        style: TextStyle(
            color: TColor.primaryTextW,
            // fontWeight: FontWeight.w800,
            fontSize: 20),
      ),
    );
  }
}
