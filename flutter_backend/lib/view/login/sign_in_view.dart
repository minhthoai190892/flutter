import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/line_text_field.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/otp_view.dart';
import 'package:flutter_backend/view/login/welcom_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  late CountryCode countryCode;
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
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
    print('SignInView');

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
              'Sign In',
              style: TextStyle(
                  color: TColor.primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Mobile Number',
              style: TextStyle(color: TColor.placeholder, fontSize: 16),
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
            const SizedBox(
              height: 8,
            ),
            const Divider(),
            LineTextField(
              title: 'Password',
              hintText: '*********',
              controller: txtPassword,
              right: IconButton(
                  onPressed: () {},
                  icon: Image.network(
                    'https://img.icons8.com/?size=100&id=3PEmEecIkSOo&format=png&color=000000',
                    width: 15,
                    height: 15,
                  )),
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(),
            RoundButtonWidget(
              title: 'SIGN IN',
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(
                        color: TColor.primary,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
