import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          child: Column(
        children: [
          const SizedBox(
            height: 72,
            child: Placeholder(),
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const TabBar(tabs: [
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
                    Container(),
                    Container(),
                    Container(),
                  ]))
                ],
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[300],
        unselectedItemColor: Colors.grey,
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
