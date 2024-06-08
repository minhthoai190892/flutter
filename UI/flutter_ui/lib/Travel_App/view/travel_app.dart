import 'package:flutter/material.dart';
import 'package:flutter_ui/Travel_App/view/travel_login_page.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TravelLoginPage(),
    );
  }
}
