import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/document_row.dart';
import 'package:flutter_backend/common_widget/line_text_field.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/otp_view.dart';
import 'package:flutter_backend/view/login/welcom_view.dart';

class DocumentUploadView extends StatefulWidget {
  const DocumentUploadView({super.key, required this.title});
  final String title;
  @override
  State<DocumentUploadView> createState() => _DocumentUploadViewState();
}

class _DocumentUploadViewState extends State<DocumentUploadView> {
  List documentList = [
    {
      "name": "Lorem ipsum dolor sit amet",
      "detail":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos impedit commodi quam dolorum ",
      "info": "",
      "status": DocumentStatus.uploaded,
    },
    {
      "name": "Lorem ipsum dolor sit amet 1",
      "detail":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos impedit commodi quam dolorum 1",
      "info": "",
      "status": DocumentStatus.uploading,
    },
    {
      "name": "Lorem ipsum dolor sit amet 2",
      "detail":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos impedit commodi quam dolorum  2",
      "info": "",
      "status": DocumentStatus.upload,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          widget.title,
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
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var dObj = documentList[index] as Map? ?? {};
                    return DocumentRow(
                        dObj: dObj,
                        onPressed: () {},
                        onInfo: () {},
                        onUpload: () {},
                        onAction: () {},
                        status: dObj['status'] as DocumentStatus? ??
                            DocumentStatus.upload);
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: documentList.length),
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
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
