import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HikingGuideApp extends StatelessWidget {
  const HikingGuideApp({super.key});

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
                  const CircleAvatar(),
                  const Gap(12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'usernames',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text('VN'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[200]!)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications)),
                  ),
                ],
              ),
              const Gap(16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: 'Search route mount,....'),
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(24)),
                      child: const Row(
                        children: [
                          Text('Sort'),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Gap(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Community Event',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(onPressed: () {}, child: const Text('See more'))
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'Lorem ipsum dolor sit, amet consectetur adipisicing elit.'),
                    const Gap(6),
                    const Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text('22/2/2022'),
                        Icon(Icons.golf_course),
                        Text('Magelang'),
                      ],
                    ),
                    const Gap(6),
                    const Text(
                      '  Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Gap(12),
                    Row(
                      children: [
                        const CircleAvatar(),
                        const CircleAvatar(),
                        const CircleAvatar(),
                        const Text('Dream, +8 more'),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration:
                              const BoxDecoration(color: Colors.lightGreen),
                          child: const Center(
                            child: Text(
                              'Join Event',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Arrow your location',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(onPressed: () {}, child: const Text('See more'))
                ],
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 320,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(color: Colors.blueAccent),
                  );
                },
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          ]),
    );
  }
}
