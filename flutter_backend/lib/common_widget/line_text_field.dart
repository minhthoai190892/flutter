import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';

class LineTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? right;
  const LineTextField(
      {super.key,
      required this.title,
      required this.hintText,
      this.controller,
      this.keyboardType,
      this.obscureText,
      this.right});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: TColor.placeholder, fontSize: 16),
        ),
        SizedBox(
          height: 30,
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: right,
              hintStyle: TextStyle(
                color: TColor.placeholder,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
