import 'package:flutter/material.dart';
import 'package:flutter_ui/Manga%20App/widgets/text_widget.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';

class MangaDetailPage extends StatelessWidget {
  const MangaDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
                Column(
                  children: [
                    TextWidget(text: 'Chapter 3'.toUpperCase()),
                    const TextWidget(text: 'Page 133')
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: const Placeholder(),
              ),
            ),
            const Gap(15),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TextWidget(text: 'text'),
                    const Spacer(),
                    const Icon(
                      Icons.star_outline_outlined,
                      color: Colors.white,
                    ),
                    const TextWidget(text: '5.0'),
                    const Gap(8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text('Top'),
                      ),
                    )
                  ],
                ),
                const Gap(15),
                const TextWidget(
                  text: 'text',
                  size: 32,
                  fontWeight: FontWeight.bold,
                ),
                const ReadMoreText(
                  ' Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?',
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  // moreStyle: TextStyle(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.amber),
                  colorClickableText: Colors.amber,
                ),
                Container(
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: const Center(
                    child: TextWidget(
                      text: 'Read Now ->',
                      size: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
