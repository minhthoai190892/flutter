import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/otp_view.dart';
import 'package:flutter_backend/view/login/welcom_view.dart';

class MobileNumberView extends StatefulWidget {
  const MobileNumberView({super.key});

  @override
  State<MobileNumberView> createState() => _MobileNumberViewState();
}

class _MobileNumberViewState extends State<MobileNumberView> {
  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  late CountryCode countryCode;
  TextEditingController txtMobile = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryCode = countryCodePicker.countryCodes.firstWhere(
      (element) => element.name == 'India',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter mobile number',
              style: TextStyle(
                  color: TColor.primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By continuing, I confirm that i have read & agree to the ',
                  style: TextStyle(color: TColor.secondaryText, fontSize: 11),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Terms & conditions',
                  style: TextStyle(color: TColor.primaryText, fontSize: 11),
                ),
                Text(
                  ' and ',
                  style: TextStyle(color: TColor.secondaryText, fontSize: 11),
                ),
                Text(
                  'Privacy & privacy',
                  style: TextStyle(color: TColor.primaryText, fontSize: 11),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () async {
                    final code =
                        await countryCodePicker.showPicker(context: context);
                    if (code != null) {
                      countryCode = code;
                      setState(() {});
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 20,
                        child: countryCode.flagImage(),
                      ),
                      Text(
                        countryCode.dialCode,
                        style:
                            TextStyle(color: TColor.primaryText, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    controller: txtMobile,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: '0909090909'),
                  ),
                )
              ],
            ),
            const Divider(),
            const SizedBox(
              height: 8,
            ),
            RoundButtonWidget(
              title: 'CONTINUE',
              onPressed: () {
                context.push(OTPView(number: 'number', code: 'code'));
              },
            )
          ],
        ),
      ),
    );
  }
}
