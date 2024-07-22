import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/plan_row.dart';

class SubscriptionPlanView extends StatefulWidget {
  const SubscriptionPlanView({super.key});

  @override
  State<SubscriptionPlanView> createState() => _SubscriptionPlanViewState();
}

class _SubscriptionPlanViewState extends State<SubscriptionPlanView> {
  List planArr = [
    {
      "name": "Basic plan",
      "time": "1 Month",
      "rides": "10 rides Everday",
      "cash_rides": "2 Cash Rides",
      "km": "50 km travel rides",
      "price": "Try Free"
    },
    {
      "name": "Classic plan",
      "time": "3 Month",
      "rides": "10 rides Everday",
      "cash_rides": "2 Cash Rides",
      "km": "50 km travel rides",
      "price": "BUY AT \$20"
    }
  ];
  @override
  Widget build(BuildContext context) {
    print('SubscriptionPlanView');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            'Subscription plan',
            style: TextStyle(
                color: TColor.primaryText,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          centerTitle: true,
        ),
        backgroundColor: TColor.bg,
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          itemCount: planArr.length,
          itemBuilder: (context, index) {
            var pObj = planArr[index] as Map? ?? {};
            return PlanRow(
              pObj: pObj,
              onPressed: () {},
            );
          },
        ));
  }
}
