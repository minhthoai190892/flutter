import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SneakerHomePage extends StatelessWidget {
  const SneakerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      '8',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Gap(8),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 3,
                                spreadRadius: 2),
                          ]),
                      width: 25,
                      height: 25,
                    ),
                    const Gap(8),
                    const Text(
                      '8',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      child: const Icon(Icons.nightlight_outlined),
                    ),
                    const Gap(8),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      child: const Icon(Icons.notifications_active_outlined),
                    ),
                  ],
                ),
                const Gap(12),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'Search'),
                  ),
                ),
                const Gap(12),
                SizedBox(
                  height: 52,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!)),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('AAAAA')],
                          ),
                        ),
                      )),
                      const Gap(12),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!)),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('AAAAA')],
                          ),
                        ),
                      )),
                      const Gap(12),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!)),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('AAAAA')],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                const Gap(12),
                const Text(
                  'Recently Viewed',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Gap(12),
                SizedBox(
                  height: 160,
                  child: Row(
                    children: [
                      ...List.generate(
                        3,
                        (index) => Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 12),
                            decoration:
                                const BoxDecoration(color: Colors.green),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  right: 8,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent),
                                    child: const Icon(Icons.favorite_outline),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // const Gap(12),
                      // Expanded(
                      //     child: Container(
                      //   decoration: const BoxDecoration(color: Colors.green),
                      // )),
                      // const Gap(12),
                      // Expanded(
                      //     child: Container(
                      //   decoration: const BoxDecoration(color: Colors.green),
                      // )),
                    ],
                  ),
                ),
                const Gap(16),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                  itemCount: 8,
                  itemBuilder: (context, index) => Container(
                    color: index % 2 == 0 ? Colors.red : Colors.green,
                  ),
                ),
                const Gap(16),
                const Text(
                  'Value for money ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}
