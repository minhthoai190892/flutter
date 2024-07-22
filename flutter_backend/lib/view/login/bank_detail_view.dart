import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/line_text_field.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/document_upload_view.dart';

class BankDetailsView extends StatefulWidget {
  const BankDetailsView({super.key});

  @override
  State<BankDetailsView> createState() => _BankDetailsViewState();
}

class _BankDetailsViewState extends State<BankDetailsView> {
  TextEditingController txtBankName = TextEditingController();
  TextEditingController txtAccountHolderName = TextEditingController();
  TextEditingController txtAccountNumber = TextEditingController();
  TextEditingController txtSwiftCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('BankDetailsView');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Bank Details',
          style: TextStyle(
              color: TColor.primaryText,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              LineTextField(
                title: 'Bank Name',
                hintText: 'Ex SBI',
                obscureText: true,
                controller: txtBankName,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Account Holder Name',
                hintText: 'Ex A Patel',
                controller: txtAccountHolderName,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Account Number',
                hintText: 'Ex A 1235467891234564',
                controller: txtAccountNumber,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Swift/IFSC Code',
                hintText: 'Ex YT123C',
                controller: txtSwiftCode,
                obscureText: true,
                keyboardType: TextInputType.text,
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
                title: 'NEXT',
                onPressed: () {
                  context.push(
                      const DocumentUploadView(title: 'Personal Document'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
