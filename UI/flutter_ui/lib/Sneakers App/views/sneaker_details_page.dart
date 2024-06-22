import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class SneakerDetailsPage extends StatelessWidget {
  const SneakerDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.blue,
            ),
            const Gap(12),
            const Row(
              children: [],
            ),
            const Row(
              children: [],
            ),
            const Text('111\$'),
            const Divider(),
            const Row(
              children: [
                Text('Size'),
              ],
            ),
            const Divider(),
            const Row(
              children: [
                Text('Colour'),
              ],
            ),
            const Divider(),
            const Row(
              children: [
                Text('Quantity'),
              ],
            ),
            const Gap(8),
            Container(
              height: 62,
              color: Colors.black,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'Buy now',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
