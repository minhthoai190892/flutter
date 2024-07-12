import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/change_language_view.dart';
import 'package:flutter_backend/view/login/mobile_number_view.dart';

class WelcomView extends StatefulWidget {
  const WelcomView({super.key});

  @override
  State<WelcomView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: TColor.bg,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1516083649464-1740d081bc44?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            width: context.width,
            height: context.height,
            fit: BoxFit.cover,
          ),
          Container(
            width: context.width,
            height: context.height,
            color: Colors.black.withOpacity(0.8),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'https://img.icons8.com/?size=100&id=15174&format=png&color=000000',
                    width: context.width * 0.25,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: RoundButtonWidget(
                      title: 'SIGN IN',
                      onPressed: () {
                        context.push(const MobileNumberView());
                      },
                    ),
                  ),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: TColor.primaryTextW,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
