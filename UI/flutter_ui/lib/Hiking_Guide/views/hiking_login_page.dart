import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/Hiking_Guide/views/hiking_guide_app.dart';
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
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Lorem ipsum dolor sit, amet consectetur',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    const Gap(8),
                    const Text(
                      ' Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const Gap(24),
                    InkWell(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HikingGuideApp(),
                            )),
                        child: const LoginWidget(text: 'Sign in with Google')),
                    const Gap(8),
                    const LoginWidget(text: 'Sign in with Apple'),
                    const Gap(16),

                    const Text("Don't you have an account? Register"),
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