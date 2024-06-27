import 'package:flutter/material.dart';
import 'package:flutter_ui/Manga%20App/widgets/text_widget.dart';
import 'package:gap/gap.dart';

class MangaDiscoverWidget extends StatefulWidget {
  const MangaDiscoverWidget({super.key});

  @override
  State<MangaDiscoverWidget> createState() => _MangaDiscoverWidgetState();
}

class _MangaDiscoverWidgetState extends State<MangaDiscoverWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('All Boods'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 52,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: index == 0
                        ? Colors.orangeAccent
                        : Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'Mystery',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(16),
            const Row(
              children: [
                TextWidget(
                  text: '83 Books',
                  color: Colors.white,
                ),
                Spacer(),
                TextWidget(text: 'by Popularity')
              ],
            ),
            const Gap(16),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  height: 180,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: const Placeholder(),
                      ),
                      const Gap(16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                TextWidget(text: 'text'),
                                Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Gap(8),
                            TextWidget(text: 'text'),
                            Gap(8),
                            Row(
                              children: [
                                Icon(Icons.star),
                                TextWidget(text: '5.0')
                              ],
                            ),
                            Gap(15),
                            TextWidget(
                                text:
                                    'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
