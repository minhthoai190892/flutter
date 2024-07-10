import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/index.dart';
import 'package:gap/gap.dart';

import '../widgets/icon_button_widget.dart';

class TravelLoginPage extends StatefulWidget {
  const TravelLoginPage({super.key});

  @override
  State<TravelLoginPage> createState() => _TravelLoginPageState();
}

class _TravelLoginPageState extends State<TravelLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1677343210638-5d3ce6ddbf85?q=80&w=1288&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            left: 24,
            right: 24,
            bottom: 24,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      // color: Colors.red,
                      ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: DotsIndicator(
                            dotsCount: 5,
                            position: 2,
                          ),
                        ),
                        const Gap(24),
                        const Text(
                          'Lorem ipsum dolor sit amet\n consectetur adipisicing elit. ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color.fromRGBO(124, 132, 100, 1),
                          ),
                        ),
                        const Gap(16),
                        const Text('Lorem ipsum dolor '),
                        const Gap(16),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TravelMainPage(),
                            ));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(124, 132, 100, 1),
                                borderRadius: BorderRadius.circular(24)),
                            child: const Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const Gap(16),
                        SizedBox(
                          height: 24,
                          child: Stack(
                            children: [
                              const Center(
                                child: Divider(),
                              ),
                              Center(
                                child: Container(
                                  color: Colors.white,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: const Text(
                                    'or Login with',
                                    style: TextStyle(
                                        color: Color.fromRGBO(124, 132, 100, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(16),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButtonWidget(
                              iconData: Icons.flutter_dash,
                            ),
                            IconButtonWidget(
                              iconData: Icons.flutter_dash,
                            ),
                            IconButtonWidget(
                              iconData: Icons.flutter_dash,
                            ),
                            IconButtonWidget(
                              iconData: Icons.flutter_dash,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
