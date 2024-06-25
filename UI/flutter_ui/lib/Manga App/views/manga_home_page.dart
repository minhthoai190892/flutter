// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class MangaHomePage extends StatefulWidget {
  const MangaHomePage({super.key});

  @override
  State<MangaHomePage> createState() => _MangaHomePageState();
}

class _MangaHomePageState extends State<MangaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Now'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                // margin: const EdgeInsets.only(left: 10),
                height: 210,
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    const Gap(12),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                          text: 'data',
                          size: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        const Gap(10),
                        const TextWidget(
                          text: 'data',
                        ),
                        const Gap(10),
                        const TextWidget(
                          text: 'data',
                        ),
                        const Gap(20),
                        const Row(
                          children: [
                            TextWidget(
                              text: '78%',
                              color: Colors.orange,
                            ),
                            Gap(8),
                            TextWidget(
                              text: '20 min left',
                            ),
                          ],
                        ),
                        const Gap(10),
                        const LinearProgressIndicator(
                          color: Colors.orangeAccent,
                          value: 0.7,
                        ),
                        const Gap(10),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: TextWidget(
                              text: 'Continue loading...',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              const Gap(10),
              TitleAndMoreWidget(
                text: 'Data',
                // color: Colors.red,
                fontWeight: FontWeight.bold,
                size: 20,
                callback: () {},
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: 250,
                    height: 100,
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Column(
                      children: [],
                    ),
                  ),
                ),
              ),
              TitleAndMoreWidget(
                text: 'Data',
                // color: Colors.red,
                fontWeight: FontWeight.bold,
                size: 20,
                callback: () {},
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemBuilder: (context, index) => const Placeholder(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          ]),
    );
  }
}

class TitleAndMoreWidget extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  const TitleAndMoreWidget({
    super.key,
    required this.text,
    required this.callback,
    this.size = 16,
    this.color = Colors.white,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: text,
          size: size,
          color: color,
          fontWeight: fontWeight,
        ),
        IconButton(
            onPressed: callback,
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ))
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  const TextWidget({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.size = 16,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight),
    );
  }
}
