// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:flutter_ui/Crypto%20Trading%20App/views/crypto_home_page.dart';

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
                const Positioned.fill(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 63,
                        child: Placeholder(),
                      ),
                      Row(
                        children: [Text('Playlist')],
                      ),
                      SizedBox(
                        height: 280,
                        child: Placeholder(),
                      ),
                      Row(
                        children: [Text('Playlist')],
                      ),
                      SizedBox(
                        height: 280,
                        child: Placeholder(),
                      ),
                      Row(
                        children: [Text('Playlist')],
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
