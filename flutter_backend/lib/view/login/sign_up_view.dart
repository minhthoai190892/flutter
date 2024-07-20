import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/line_text_field.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/bank_detail_view.dart';
import 'package:flutter_backend/view/login/otp_view.dart';
import 'package:flutter_backend/view/login/welcom_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  late CountryCode countryCode;
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  TextEditingController txtHomeAddress = TextEditingController();
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
    print('SignUpView');

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Profile',
                style: TextStyle(
                    color: TColor.primaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              LineTextField(
                title: 'First name',
                hintText: 'Ex your first name',
                obscureText: true,
                controller: txtFirstName,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Last name',
                hintText: 'Ex your last name',
                controller: txtLastName,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
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
                          style: TextStyle(
                              color: TColor.primaryText, fontSize: 16),
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
              LineTextField(
                title: 'Home Address',
                hintText: 'Ex your home address',
                controller: txtLastName,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
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
              RoundButtonWidget(
                title: 'REGISTER',
                onPressed: () {
                  context.push(BankDetailsView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
