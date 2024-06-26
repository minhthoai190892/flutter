import 'package:flutter/material.dart';

class MangaPersonWidget extends StatefulWidget {
  const MangaPersonWidget({super.key});

  @override
  State<MangaPersonWidget> createState() => _MangaPersonWidgetState();
}

class _MangaPersonWidgetState extends State<MangaPersonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
    );
  }
}
