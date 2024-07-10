import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData iconData;
  const IconButtonWidget({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), shape: BoxShape.circle),
      child: IconButton(onPressed: () {}, icon: Icon(iconData)),
    );
  }
}
