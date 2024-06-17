import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CryptoHomePage extends StatefulWidget {
  const CryptoHomePage({super.key});

  @override
  State<CryptoHomePage> createState() => _CryptoHomePageState();
}

class _CryptoHomePageState extends State<CryptoHomePage> {
  List<String> tabs = [
    'All',
    'Green',
    'Red',
    'Orange',
  ];
  var pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                'List of quites',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Indexes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const ContainerWidget(),
                      const ContainerWidget(),
                      const Gap(12),
                      const Text(
                        'Stocks',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ...List.generate(
                        30,
                        (index) => const ContainerWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 8),
      height: 72,
      decoration: const BoxDecoration(color: Colors.white),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 38,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '222.222.22',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment:
                //     MainAxisAlignment.spaceBetween,
                children: [
                  Text('Unkown bank'),
                  Spacer(),
                  Text('-33.72'),
                  Gap(6),
                  Text('-1.72%'),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
