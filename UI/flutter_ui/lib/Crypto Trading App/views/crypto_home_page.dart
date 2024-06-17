import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CryptoHomePage extends StatefulWidget {
  const CryptoHomePage({super.key});

  @override
  State<CryptoHomePage> createState() => _CryptoHomePageState();
}

class _CryptoHomePageState extends State<CryptoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                            child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 26,
                        )),
                        Positioned(
                          left: 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26,
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 26,
                    child: Icon(Icons.search),
                  ),
                ],
              ),
              const Text('List of quites'),
              SizedBox(
                height: 32,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(),
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Indexes'),
                    Container(
                      height: 64,
                      decoration: const BoxDecoration(color: Colors.white),
                    ),
                    const Gap(12),
                    Container(
                      height: 64,
                      decoration: const BoxDecoration(color: Colors.white),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
