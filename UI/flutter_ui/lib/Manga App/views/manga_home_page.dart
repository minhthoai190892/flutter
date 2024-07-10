// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ui/Manga%20App/views/manga_book_mark_widget.dart';
import 'package:flutter_ui/Manga%20App/views/manga_discover_widget.dart';
import 'package:flutter_ui/Manga%20App/views/manga_person_widget.dart';

import 'manga_home_widget.dart';

class MangaHomePage extends StatefulWidget {
  const MangaHomePage({super.key});

  @override
  State<MangaHomePage> createState() => _MangaHomePageState();
}

class _MangaHomePageState extends State<MangaHomePage> {
  var pageIndex = 0;
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
      body: IndexedStack(
        index: pageIndex,
        children: const [
          MangaHomeWidget(),
          MangaDiscoverWidget(),
          MangaDBookMarkWidget(),
          MangaPersonWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          currentIndex: pageIndex,
          backgroundColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.amberAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined), label: ''),
          ]),
    );
  }
}
