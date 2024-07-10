
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/text_widget.dart';
import '../widgets/title_and_more_widget.dart';

class MangaHomeWidget extends StatelessWidget {
  const MangaHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // margin: const EdgeInsets.only(left: 10),
              height: 210,
              child: Row(
                children: [
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  const Gap(12),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget(
                        text: 'data',
                        size: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      const Gap(10),
                      const TextWidget(
                        text: 'data',
                      ),
                      const Gap(10),
                      const TextWidget(
                        text: 'data',
                      ),
                      const Gap(20),
                      const Row(
                        children: [
                          TextWidget(
                            text: '78%',
                            color: Colors.orange,
                          ),
                          Gap(8),
                          TextWidget(
                            text: '20 min left',
                          ),
                        ],
                      ),
                      const Gap(10),
                      const LinearProgressIndicator(
                        color: Colors.orangeAccent,
                        value: 0.7,
                      ),
                      const Gap(10),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: TextWidget(
                            text: 'Continue loading...',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            const Gap(10),
            TitleAndMoreWidget(
              text: 'Data',
              // color: Colors.red,
              fontWeight: FontWeight.bold,
              size: 20,
              callback: () {},
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 280,
                  margin: const EdgeInsets.all(8),
                  // decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)),
                      )),
                      const Gap(5),
                      const TextWidget(
                        text: 'data',
                        fontWeight: FontWeight.bold,
                      ),
                      const Gap(5),
                      const TextWidget(text: 'data'),
                    ],
                  ),
                ),
              ),
            ),
            TitleAndMoreWidget(
              text: 'Data',
              // color: Colors.red,
              fontWeight: FontWeight.bold,
              size: 20,
              callback: () {},
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12),
              itemBuilder: (context, index) => const Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
