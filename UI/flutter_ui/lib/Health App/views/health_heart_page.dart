import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HealthHeartPage extends StatefulWidget {
  const HealthHeartPage({super.key});

  @override
  State<HealthHeartPage> createState() => _HealthHeartPageState();
}

class _HealthHeartPageState extends State<HealthHeartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 42,
              decoration: ShapeDecoration(
                shape: const StadiumBorder(),
                color: Colors.blueGrey[100],
              ),
              child: const Row(
                children: [
                  Expanded(
                      child: Center(
                    child: Text('Day'),
                  )),
                  Expanded(
                      child: Center(
                    child: Text('Week'),
                  )),
                  Expanded(
                      child: Center(
                    child: Text('Month'),
                  )),
                ],
              ),
            ),
            const Gap(24),
            Expanded(
                child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                          ),
                          Row(
                            children: [
                              const Text(
                                '98',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              const Gap(10),
                              Text(
                                'bpm',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]),
                              ),
                            ],
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_right_alt))
                        ],
                      ),
                    )),
                    const Gap(16),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                          ),
                          Row(
                            children: [
                              const Text(
                                '98',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              const Gap(10),
                              Text(
                                'bpm',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]),
                              ),
                            ],
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_right_alt))
                        ],
                      ),
                    )),
                  ],
                )),
                const Gap(16),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                          ),
                          Row(
                            children: [
                              const Text(
                                '98',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              const Gap(10),
                              Text(
                                'bpm',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]),
                              ),
                            ],
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_right_alt))
                        ],
                      ),
                    )),
                    const Gap(16),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                          ),
                          Row(
                            children: [
                              const Text(
                                '98',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              const Gap(10),
                              Text(
                                'bpm',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]),
                              ),
                            ],
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'data',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_right_alt))
                        ],
                      ),
                    )),
                  ],
                )),
              ],
            )),
            const Gap(24),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: ShapeDecoration(
                  color: Colors.greenAccent[200], shape: const StadiumBorder()),
              child: const Center(
                child: Text(
                  'More Hear',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
