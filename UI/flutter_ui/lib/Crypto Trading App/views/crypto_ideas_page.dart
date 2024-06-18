import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CryptoIdeasPage extends StatefulWidget {
  const CryptoIdeasPage({super.key});

  @override
  State<CryptoIdeasPage> createState() => _CryptoIdeasPageState();
}

class _CryptoIdeasPageState extends State<CryptoIdeasPage> {
  List<String> tabs = [
    'All',
    'Subcription',
    'Editor choices',
    'Subcription',
  ];
  var pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26,
                            child: Icon(Icons.add),
                          ),
                        ),
                        Positioned(
                            child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 26,
                        )),
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
              const Text(
                'Ideas',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(16),
              SizedBox(
                height: 32,
                child: ListView.builder(
                  itemCount: tabs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:
                              index == pageIndex ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      margin: const EdgeInsets.only(right: 16),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                            child: Text(
                          tabs[index],
                          style: TextStyle(
                            color: index == pageIndex
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(16),
              Expanded(
                child: IndexedStack(
                  index: pageIndex,
                  children: [
                    Container(
                      child: const Center(
                        child: Text('All'),
                      ),
                    ),
                    ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        height: 320,
                        child: Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    ),
                    Container(
                      child: const Center(
                        child: Text('All2 '),
                      ),
                    ),
                    Container(
                      child: const Center(
                        child: Text('All 3'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
