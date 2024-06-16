import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HikingDetailPage extends StatefulWidget {
  const HikingDetailPage({super.key});

  @override
  State<HikingDetailPage> createState() => _HikingDetailPageState();
}

class _HikingDetailPageState extends State<HikingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 44, left: 24, right: 24),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1572598973323-eeef47c14431?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDl8RnpvM3p1T0hONnd8fGVufDB8fHx8fA%3D%3D'),
                    fit: BoxFit.cover),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.download),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Mount via Treies'),
                  const Row(
                    children: [
                      Icon(Icons.golf_course),
                      Text('VN'),
                    ],
                  ),
                  Container(
                    height: 32,
                    decoration: BoxDecoration(color: Colors.grey[200]),
                  ),
                  const Text('Description'),
                  const Text(
                    'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tenetur est laboriosam beatae exercitationem facilis sit, odio unde reprehenderit libero animi cum labore assumenda, perspiciatis culpa. Illum itaque reiciendis recusandae repellat?',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.red,
        height: 82,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(108, 123, 81, 1),
            borderRadius: BorderRadius.circular(32),
          ),
          child: const Center(
              child: Text(
            'Preview Trail',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
