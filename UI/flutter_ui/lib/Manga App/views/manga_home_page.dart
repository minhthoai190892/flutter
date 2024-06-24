import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            Container(
              child: const Placeholder(),
            ),
            const Row(
              children: [
                Text(
                  'data',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 240,
              child: Placeholder(),
            ),
            const Row(
              children: [
                Text(
                  'data',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => const SizedBox(
                height: 100,
                child: Placeholder(),
              ),
            )
          ],
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
