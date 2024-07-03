import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EBookApp extends StatelessWidget {
  const EBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.app_registration_rounded),
                Expanded(
                  child: Container(
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                    ),
                  
                  ),
                ),
                const Icon(Icons.notification_add),
                const Icon(Icons.shopping_bag),
              ],
            )
            // top authors
            // menu
            // top trending
          ],
        ),
      ),
    );
  }
}
