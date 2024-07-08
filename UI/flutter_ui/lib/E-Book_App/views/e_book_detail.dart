import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';

class EBookDetail extends StatelessWidget {
  const EBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  const Text(
                    'Apollo',
                    style: TextStyle(fontSize: 30),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                ],
              ),
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.amber,
                              size: 40,
                            )))
                  ],
                ),
              ),
              const Gap(20),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('Lorem ipsum dolor sit'),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  const Text('4.5'),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons
                                          .switch_access_shortcut_add_outlined))
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text('\$ 300.00'),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(Icons.remove),
                            ),
                            const Text('01'),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  border: Border.all(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(Icons.add, color: Colors.white),
                            )
                          ],
                        ),
                        const ReadMoreText(
                          'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?',
                          trimMode: TrimMode.Line,
                          trimLines: 3,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          colorClickableText: Colors.black,
                          moreStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amberAccent[200]),
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
