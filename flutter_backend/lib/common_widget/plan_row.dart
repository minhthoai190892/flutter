import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';

class PlanRow extends StatelessWidget {
  const PlanRow({super.key, required this.pObj, required this.onPressed});
  final Map pObj;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 1)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            pObj['name'] as String? ?? "",
            style: TextStyle(
                color: TColor.primaryText,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Text(
            pObj['time'] as String? ?? "",
            style: TextStyle(color: TColor.primaryText, fontSize: 18),
          ),
          Text(
            pObj['rides'] as String? ?? "",
            style: TextStyle(color: TColor.primaryText, fontSize: 18),
          ),
          Text(
            pObj['cash_rides'] as String? ?? "",
            style: TextStyle(color: TColor.primaryText, fontSize: 18),
          ),
          Text(
            pObj['km'] as String? ?? "",
            style: TextStyle(color: TColor.primaryText, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                pObj['price'] as String? ?? "",
                style: TextStyle(color: TColor.primary, fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
