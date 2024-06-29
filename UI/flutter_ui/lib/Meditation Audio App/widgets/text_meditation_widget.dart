// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextMeditationWidget extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final double? size;
  final FontWeight? fontWeight;
  const TextMeditationWidget({
    super.key,
    required this.text,
    this.maxLines,
    this.textOverflow,
    this.size, this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      style: TextStyle(fontSize: size, fontWeight: fontWeight),
    );
  }
}
