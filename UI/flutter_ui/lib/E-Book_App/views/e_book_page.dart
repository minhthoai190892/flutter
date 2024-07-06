import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EBookPage extends StatefulWidget {
  const EBookPage({super.key});

  @override
  State<EBookPage> createState() => _EBookPageState();
}

class _EBookPageState extends State<EBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('E-book'),
                TextButton(onPressed: () {}, child: const Text('Skip'))
              ],
            ),
            const Gap(20),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => Container(
                  height: 300,
                  width: 385,
                  margin: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber,
                              ),
                              width: 200,
                              height: 250,
                            ),
                            const Gap(10),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                ),
                                width: 200,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                ),
                                width: 200,
                              ),
                            ),
                            const Gap(10),
                            Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Gap(30),
                const Text(
                  'Lorem ipsum dolor sit, amet consectetur adipisicing elit.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
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
            ))
          ],
        ),
      )),
    );
  }
}
