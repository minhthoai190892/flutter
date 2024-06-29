import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/text_meditation_widget.dart';

class MeditationSleep extends StatelessWidget {
  const MeditationSleep({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("${size.width} - ${size.height}");
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                color: Color.fromARGB(255, 165, 202, 233)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 30,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextMeditationWidget(
                        text: 'Sleep',
                        fontSize: 20,
                      ),
                    ],
                  ),
                  // const Spacer(),

                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white12, shape: BoxShape.circle),
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(15),
                  Row(
                    children: [
                      const TextMeditationWidget(
                        text: 'Feature',
                        fontSize: 20,
                      ),
                      const Spacer(),
                      const TextMeditationWidget(text: 'See all'),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_right))
                    ],
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    height: size.height * 0.4,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(right: 12),
                        width: size.width * 0.78,
                        decoration: BoxDecoration(color: Colors.grey[100]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/1475837467/vi/anh/nh%C3%ACn-t%E1%BB%AB-tr%C3%AAn-kh%C3%B4ng-c%E1%BB%A7a-t%C3%A0u-cao-t%E1%BB%91c-g%E1%BA%A7n-m%E1%BB%99t-h%C3%B2n-%C4%91%E1%BA%A3o-%E1%BB%9F-bi%E1%BB%83n-andaman.webp?s=1024x1024&w=is&k=20&c=aURKvpIyRt8yBL7_CZU4kUEmge7Uu7y2gfgmBTduP2s=',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.timelapse),
                                            Text('7 MIN')
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            const TextMeditationWidget(
                              text: 'text',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            const TextMeditationWidget(
                              text: 'text',
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(15),
                  const TextMeditationWidget(
                    text: 'Quick & Easy',
                    fontSize: 30,
                  ),
                  ListView.separated(
                      // scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Row(
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueAccent),
                              ),
                              const Gap(15),
                              const Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextMeditationWidget(
                                    text: 'text',
                                    fontSize: 20,
                                  ),
                                  TextMeditationWidget(
                                    text: 'text',
                                  ),
                                ],
                              )),
                              Container(
                                child: const Row(
                                  children: [
                                    Icon(Icons.timelapse),
                                    TextMeditationWidget(text: '7 MIN')
                                  ],
                                ),
                              )
                            ],
                          ),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: 10)
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
