import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/Meditation%20Audio%20App/widgets/text_meditation_widget.dart';
import 'package:gap/gap.dart';

class MeditationAudioApp extends StatelessWidget {
  const MeditationAudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                children: [
                  const CircleAvatar(
                    radius: 40,
                  ),
                  const Gap(12),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextMeditationWidget(
                        text: 'Hi User',
                      ),
                      TextMeditationWidget(
                        text: 'Good Afternoon!',
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white12, shape: BoxShape.circle),
                    child: const Icon(Icons.notifications_none_outlined),
                  ),
                  const Gap(12),
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(10),
                      height: 63,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextMeditationWidget(
                                    text: 'Lorem ipsum dolor sit.'),
                                TextMeditationWidget(
                                  text:
                                      'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?',
                                  maxLines: 1,
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_right_alt_outlined))
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Stack(
                              children: [
                                Image.network(
                                  'https://media.istockphoto.com/id/1475837467/vi/anh/nh%C3%ACn-t%E1%BB%AB-tr%C3%AAn-kh%C3%B4ng-c%E1%BB%A7a-t%C3%A0u-cao-t%E1%BB%91c-g%E1%BA%A7n-m%E1%BB%99t-h%C3%B2n-%C4%91%E1%BA%A3o-%E1%BB%9F-bi%E1%BB%83n-andaman.webp?s=1024x1024&w=is&k=20&c=aURKvpIyRt8yBL7_CZU4kUEmge7Uu7y2gfgmBTduP2s=',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                                Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Row(
                                        children: [
                                          Icon(Icons.add_location),
                                          TextMeditationWidget(text: '7M')
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextMeditationWidget(text: 'text'),
                                const TextMeditationWidget(
                                  text: 'Lorem ipsum dolor sit, amet cons',
                                  fontWeight: FontWeight.bold,
                                  size: 30,
                                ),
                                const TextMeditationWidget(text: 'text'),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Text(
                                    'Play',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const TextMeditationWidget(
                      text: 'Listen & Learn',
                      size: 30,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => const Row(
                              children: [],
                            ),
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Discovery'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.nightlight), label: 'Sleep'),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
