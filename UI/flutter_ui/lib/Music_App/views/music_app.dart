// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red)),
                  child: ContainerMusicAppWidget(
                    padding: const EdgeInsets.all(4),
                    border: Border.all(color: Colors.red),
                    height: 32,
                    width: 32,
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 3,
                      ),
                      const Gap(4),
                      const CircleAvatar(
                        radius: 6,
                      ),
                      const Gap(4),
                      ContainerMusicAppWidget(
                        height: 30,
                        width: 30,
                        color: Colors.black,
                        // border: Border.all(
                        //   color: Colors.black,
                        // ),
                        borderRadius: BorderRadius.circular(4),
                        shape: BoxShape.rectangle,
                      ),
                      const Gap(4),
                      const CircleAvatar(
                        radius: 6,
                      ),
                      const Gap(4),
                      const CircleAvatar(
                        radius: 3,
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
              ],
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(16),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        height: 82,
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Live ...'),
                                const Gap(4),
                                Row(
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey),
                                    ),
                                    const Gap(4),
                                    const Text('The secret')
                                  ],
                                ),
                              ],
                            )),
                            Expanded(
                                child: Container(
                              height: 36,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                            )),
                            const Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Playlist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        height: 280,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[200]!)),
                            margin: const EdgeInsets.only(right: 16),
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.grey),
                                )),
                                const Text('data'),
                                const Text('data'),
                              ],
                            ),
                          ),
                          itemCount: 10,
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            'Playlist',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 280,
                        child: Placeholder(),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 84,
                      color: Colors.blue,
                    ))
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: 'My Device'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ContainerMusicAppWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  late BoxShape? shape = BoxShape.rectangle;
  final Border? border;
  final EdgeInsets? padding;
  final Color? color;
  ContainerMusicAppWidget({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.shape,
    this.border,
    this.padding,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          shape: shape!,
          border: border),
    );
  }
}
