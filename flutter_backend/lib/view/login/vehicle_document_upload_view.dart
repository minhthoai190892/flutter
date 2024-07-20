import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/document_row.dart';
import 'package:flutter_backend/common_widget/line_text_field.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/add_vehicle_view.dart';
import 'package:flutter_backend/view/login/otp_view.dart';
import 'package:flutter_backend/view/login/subscription_plan_view.dart';
import 'package:flutter_backend/view/login/welcom_view.dart';

class VehicleDocumentUploadView extends StatefulWidget {
  const VehicleDocumentUploadView({super.key});

  @override
  State<VehicleDocumentUploadView> createState() =>
      _VehicleDocumentUploadViewState();
}

class _VehicleDocumentUploadViewState extends State<VehicleDocumentUploadView> {
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
    print('VehicleDocumentUploadView');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Vehicle Document',
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
                        onInfo: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return Container(
                                width: context.width,
                                height: context.height - 100,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 46, horizontal: 20),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black12, blurRadius: 3)
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'RC Book',
                                      style: TextStyle(
                                          color: TColor.primaryText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Text(
                                          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos impedit commodi quam dolorum atque esse illoconsectetur ad distinctio, minus deserunt dignissimos sunt saepe ratione tempore vitae debitis odit? Recusandae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur ipsam ad nihil numquam eum dicta est iure nam quas cumque quidem iusto, doloremque esse veniam labore, deserunt maiores! Explicabo, quibusdam.Lorem ipsum dolor sit amet consectetur adipisicing elit. \n\nQuos impedit commodi quam dolorum atque esse illoconsectetur ad distinctio, minus deserunt dignissimos sunt saepe ratione tempore vitae debitis odit? Recusandae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur ipsam ad nihil numquam eum dicta est iure nam quas cumque quidem iusto, doloremque esse veniam labore, deserunt maiores! Explicabo, quibusdam. \n\nQuos impedit commodi quam dolorum atque esse illoconsectetur ad distinctio, minus deserunt dignissimos sunt saepe ratione tempore vitae debitis odit? Recusandae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur ipsam ad nihil numquam eum dicta est iure nam quas cumque quidem iusto, doloremque esse veniam labore, deserunt maiores! Explicabo, quibusdam. \n\nQuos impedit commodi quam dolorum atque esse illoconsectetur ad distinctio, minus deserunt dignissimos sunt saepe ratione tempore vitae debitis odit? Recusandae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur ipsam ad nihil numquam eum dicta est iure nam quas cumque quidem iusto, doloremque esse veniam labore, deserunt maiores! Explicabo, quibusdam.',
                                          style: TextStyle(
                                              color: TColor.secondaryText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              context.pop();
                                            },
                                            child: Text(
                                              'OK',
                                              style: TextStyle(
                                                  color: TColor.primary,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
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
                onPressed: () => context.push(const SubscriptionPlanView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
