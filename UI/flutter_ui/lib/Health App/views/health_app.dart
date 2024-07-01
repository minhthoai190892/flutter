import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/Health%20App/views/health_heart_page.dart';
import 'package:gap/gap.dart';

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical & Health'),
        actions: [
          Icon(
            Icons.info_outline,
            color: Colors.green[300],
          ),
          const Gap(12),
          const Text('Help'),
          const Gap(12),
          IconButton(onPressed: () {}, icon: const Icon(Icons.apps))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(32)),
              height: 72,
              child: const Row(
                children: [
                  CircleAvatar(),
                  Gap(12),
                  Icon(Icons.keyboard_arrow_down_outlined),
                  Gap(12),
                  Text('US'),
                  Spacer(),
                  Text(
                    '50.000.000',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                        labelColor: Colors.green[300],
                        indicatorColor: Colors.green[300],
                        tabs: const [
                          Tab(
                            text: 'Case',
                          ),
                          Tab(
                            text: 'Case',
                          ),
                          Tab(
                            text: 'Case',
                          ),
                        ]),
                    Expanded(
                        child: TabBarView(children: [
                      Container(
                        child: const Text('data'),
                      ),
                      Container(
                        child: const Text('data'),
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 240,
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              const Gap(16),
                              const Text(
                                'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    height: 1.8),
                              ),
                              const Gap(16),
                              const Text(
                                'data',
                              ),
                              const Gap(20),
                              const Text(
                                'data',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Gap(16),
                              Row(
                                children: [
                                  Container(
                                    height: 62,
                                    width: 82,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  const Gap(16),
                                  const Expanded(
                                    child: Text(
                                      'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          height: 1.8),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]))
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[300],
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          if (value == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HealthHeartPage(),
                ));
          }
        },
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
