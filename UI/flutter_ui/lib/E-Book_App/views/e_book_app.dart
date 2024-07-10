import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EBookApp extends StatefulWidget {
  const EBookApp({super.key});

  @override
  State<EBookApp> createState() => _EBookAppState();
}

class _EBookAppState extends State<EBookApp> {
  int menuIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // appbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.app_registration_rounded),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: StadiumBorder(),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              suffixIcon: Icon(Icons.mic),
                              prefixIcon: Icon(Icons.search_outlined)),
                        ),
                      ),
                    ),
                    const Icon(Icons.notification_add),
                    const Icon(Icons.shopping_bag),
                  ],
                ),
                const Gap(12),
                // top authors
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  // height: 180,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Top Author',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              children: [
                                Text('See all'),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Divider(),
                      const Gap(10),
                      SizedBox(
                        height: 80,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return const Column(
                                children: [
                                  CircleAvatar(),
                                  Text('data'),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount: 10),
                      )
                    ],
                  ),
                ),
                const Gap(15),
                // menu
                SizedBox(
                    height: 40,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  menuIndex = index;
                                });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                  color: menuIndex == index
                                      ? Colors.amber[300]
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text('dataddd'),
                                ),
                              ),
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 10,
                            ),
                        itemCount: 10)),
                const Gap(15),
                // top trending
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Top Trending'),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              children: [
                                Text('See All'),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Expanded(
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 200,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]!),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.blue[50]),
                                            ),
                                            const Positioned(
                                                top: 10,
                                                right: 10,
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Colors.amber,
                                                ))
                                          ],
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Text('data'),
                                          Spacer(),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Text('4.5'),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            'Apoplo',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Text(
                                            '\$300.00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Top Trending'),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              children: [
                                Text('See All'),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(15),
                      Expanded(
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  width: 200,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.grey[300]!),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.blue[50]),
                                            ),
                                            const Positioned(
                                                top: 10,
                                                right: 10,
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Colors.amber,
                                                ))
                                          ],
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Text('data'),
                                          Spacer(),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Text('4.5'),
                                        ],
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            'Apoplo',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Text(
                                            '\$300.00',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          ]),
    );
  }
}
