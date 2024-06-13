import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  final String text;
  const LoginWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red[200]!),
          borderRadius: BorderRadius.circular(24)),
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
