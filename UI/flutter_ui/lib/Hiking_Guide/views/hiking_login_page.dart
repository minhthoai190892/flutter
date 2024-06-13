import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../widgets/login_widget.dart';

class HikingLoginPage extends StatelessWidget {
  const HikingLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: const BoxDecoration(color: Colors.red),
            ),
          ),
          const Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit, amet consectetur',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    Gap(8),
                    Text(
                      ' Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    Gap(24),
                    LoginWidget(text: 'Sign in with Google'), Gap(8),
                    LoginWidget(text: 'Sign in with Apple'),
                    Gap(16),

                    Text("Don't you have an account? Register"),
                    // Text.rich(
                    //   TextSpan(
                    //     children: [
                    //       const TextSpan(text: "Don't you have an account? "),
                    //       TextSpan(
                    //         text: "Register",
                    //         onEnter: (event) {
                    //           print(event);
                    //         },
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
