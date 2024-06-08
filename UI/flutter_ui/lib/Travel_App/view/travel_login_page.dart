import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                        const Text(
                            'Lorem ipsum dolor sit amet\n consectetur adipisicing elit. '),
                        const Text('Lorem ipsum dolor '),
                        Container(
                          child: const Center(
                            child: Text('Get Started'),
                          ),
                        ),
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
                                  child: const Text('or Login with'),
                                ),
                              ),
                            ],
                          ),
                        ),
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

class IconButtonWidget extends StatelessWidget {
  final IconData iconData;
  const IconButtonWidget({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), shape: BoxShape.circle),
      child: IconButton(onPressed: () {}, icon: Icon(iconData)),
    );
  }
}
