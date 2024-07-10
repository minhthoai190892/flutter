import 'package:flutter/material.dart';
import 'package:flutter_ui/Meditation%20Audio%20App/views/meditation_course.dart';
import 'package:flutter_ui/Meditation%20Audio%20App/views/meditation_discovery.dart';
import 'package:flutter_ui/Meditation%20Audio%20App/views/meditation_sleep.dart';

import '../widgets/meditation_audio_app_widget.dart';

class MeditationAudioApp extends StatefulWidget {
  const MeditationAudioApp({super.key});

  @override
  State<MeditationAudioApp> createState() => _MeditationAudioAppState();
}

class _MeditationAudioAppState extends State<MeditationAudioApp> {
    int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: const [
          MeditationAudioAppWidget(),
          MeditationDiscovery(),
          MeditationCourse(),
          MeditationSleep(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            pageIndex = value;
            // print(pageIndex);
          });
        },
        currentIndex: pageIndex,
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
