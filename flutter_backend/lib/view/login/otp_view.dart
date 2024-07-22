import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key, required this.number, required this.code});
  final String number;
  final String code;
  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  TextEditingController txtMobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('OTPView');

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
              'OTP Verification',
              style: TextStyle(
                  color: TColor.primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              'Enter the 6-digit code sent to you at',
              style: TextStyle(color: TColor.primaryText, fontSize: 11),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '${widget.code} ${widget.number}',
                  style: TextStyle(color: TColor.primaryText, fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(color: TColor.secondary, fontSize: 16),
                  ),
                )
              ],
            ),
            OtpTextField(
              numberOfFields: 6,
              borderColor: TColor.placeholder,
              focusedBorderColor: TColor.primary,
              cursorColor: Colors.green,
              textStyle: TextStyle(
                color: TColor.primaryText,
                fontSize: 16,
              ),
              showFieldAsBox: true,
              borderWidth: 1.0,
              onCodeChanged: (code) {},
              onSubmit: (verificationCode) {},
            ),
            const SizedBox(
              height: 20,
            ),
            RoundButtonWidget(
              title: 'SUBMIT',
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpTimerButton(
                    onPressed: () {},
                    text: const Text(
                      'Resent OTP ',
                      style: TextStyle(fontSize: 20),
                    ),
                    buttonType: ButtonType.text_button,
                    backgroundColor: Colors.orange,
                    duration: 60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
