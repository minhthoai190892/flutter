import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TravelDetailPage extends StatefulWidget {
  const TravelDetailPage({super.key});

  @override
  State<TravelDetailPage> createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends State<TravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon((Icons.arrow_back))),
                  ),
                  const Expanded(
                      child: Center(
                    child: Text('Detail'),
                  )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                    child: const Icon(Icons.favorite_outline),
                  ),
                ],
              ),
              const Gap(24),
              Expanded(
                  child: SingleChildScrollView(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 420,
                        decoration: const BoxDecoration(color: Colors.grey),
                      ),
                      const TabBar(
                          isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          tabs: [
                            Tab(
                              text: 'Description',
                            ),
                            Tab(
                              text: 'Review',
                            )
                          ]),
                      const Gap(16),
                      const SizedBox(
                        height: 400,
                        /*  */
                        child: TabBarView(children: [
                          Text(
                              'Lorem ipsum dolor sit amet\n consectetur adipisicing elit.'),
                          Text(
                              'Lorem ipsum dolor sit amet\n consectetur adipisicing elitdddddddddddddddddddddddddddddddddddddddddd/*  */.'),
                        ]),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        child: Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start From',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$175',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '/Person')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(124, 132, 100, 1),
                borderRadius: BorderRadius.circular(27),
              ),
              child: const Text(
                'Book now',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
