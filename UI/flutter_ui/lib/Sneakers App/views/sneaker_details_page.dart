import 'package:flutter/cupertino.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              child: PageView(
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            const Gap(12),
            Row(
              children: [
                const Expanded(
                  child: Text(
                      'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae e'),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]!)),
                  child: const Icon(Icons.favorite_border_outlined),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[200]!)),
                  child: const Icon(Icons.upload),
                ),
              ],
            ),
            Row(
              children: [
                ...List.generate(
                  4,
                  (index) => const Icon(Icons.eco),
                ),
                const Icon(Icons.eco_outlined),
                const Text('205 views')
              ],
            ),
            const Text('111\$'),
            const Divider(),
            const Row(
              children: [
                Text('Size'),
                Spacer(),
                Text('US11'),
                Icon(Icons.height_outlined)
              ],
            ),
            const Divider(),
            const Row(
              children: [
                Text('Colour'),
                Spacer(),
                Text('Light Grey'),
                Icon(Icons.height_outlined)
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Text('Quantity'),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.remove_outlined)),
                const Text('3'),
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
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
