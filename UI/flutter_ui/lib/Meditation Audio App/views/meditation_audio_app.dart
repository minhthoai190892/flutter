import 'package:flutter/material.dart';
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
