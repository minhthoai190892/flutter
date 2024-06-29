// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextMeditationWidget extends StatelessWidget {
  final String text;
  const TextMeditationWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
