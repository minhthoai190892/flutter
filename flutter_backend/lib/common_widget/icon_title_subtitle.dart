import 'package:flutter/cupertino.dart';

import '../common/color_extension.dart';

class IconTitleSubtitleButton extends StatelessWidget {
  const IconTitleSubtitleButton(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      required this.onPressed});
  final String title;
  final String subTitle;
  final String icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.network(
            icon,
            width: 20,
            height: 20,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
                color: TColor.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.w800),
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
