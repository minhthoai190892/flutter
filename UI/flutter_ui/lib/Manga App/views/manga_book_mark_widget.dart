import 'package:flutter/material.dart';

class MangaDBookMarkWidget extends StatefulWidget {
  const MangaDBookMarkWidget({super.key});

  @override
  State<MangaDBookMarkWidget> createState() => _MangaDBookMarkWidgetState();
}

class _MangaDBookMarkWidgetState extends State<MangaDBookMarkWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Mark'),
      ),
    );
  }
}
