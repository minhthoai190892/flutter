import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FinanceHomePage extends StatelessWidget {
  const FinanceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(),
                              const Gap(8),
                              const Text('Unknown user'),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.settings_outlined,
                                  size: 20,
                                ),
                              ),
                              const Gap(8),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.notifications_none,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          const Gap(24),
                          const Text(
                            'Avaliable on card',
                            style: TextStyle(fontSize: 12),
                          ),
                          const Text(
                            '\$123',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 28),
                          ),
                          const Gap(16),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Transter Limit'),
                              Text('\$123'),
                            ],
                          ),
                          const Gap(4),
                          const SizedBox(
                            height: 2,
                            child: LinearProgressIndicator(
                              value: .3,
                              color: Colors.black,
                            ),
                          ),
                          const Gap(6),
                          const Text(
                            'Spen \$123',
                            style: TextStyle(fontSize: 12),
                          ),
                          const Gap(16),
                          SizedBox(
                            height: 42,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Pay',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.monetization_on_rounded,
                                          color: Colors.white,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Gap(8),
                                Expanded(
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Deposit',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.add_circle,
                                          color: Colors.white,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 4,
                              width: 72,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                            const Gap(8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Operations',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('View All'),
                                ),
                              ],
                            ),
                            const Gap(8),
                            const Text('Today'),
                            const Gap(8),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            const Gap(8),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            const Gap(8),
                            const Text('Today'),
                            const Gap(8),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            const Gap(8),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
