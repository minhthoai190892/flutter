
import 'package:flutter/material.dart';

import 'text_widget.dart';

class TitleAndMoreWidget extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  const TitleAndMoreWidget({
    super.key,
    required this.text,
    required this.callback,
    this.size = 16,
    this.color = Colors.white,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: text,
          size: size,
          color: color,
          fontWeight: fontWeight,
        ),
        IconButton(
            onPressed: callback,
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ))
      ],
    );
  }
}