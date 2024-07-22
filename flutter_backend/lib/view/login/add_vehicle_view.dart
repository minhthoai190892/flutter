import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/common_widget/line_text_field.dart';
import 'package:flutter_backend/common_widget/round_button_widget.dart';
import 'package:flutter_backend/view/login/vehicle_document_upload_view.dart';

class AddVehicleView extends StatefulWidget {
  const AddVehicleView({super.key});

  @override
  State<AddVehicleView> createState() => _AddVehicleViewState();
}

class _AddVehicleViewState extends State<AddVehicleView> {
  TextEditingController txtServiceType = TextEditingController();
  TextEditingController txtBrandName = TextEditingController();
  TextEditingController txtModeName = TextEditingController();
  TextEditingController txtManufacturer = TextEditingController();
  TextEditingController txtNumberPlate = TextEditingController();
  TextEditingController txtColor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('Add vehicle view ');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Add Vehicle',
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
                title: 'Service Type',
                hintText: 'Ex: Micro',
                obscureText: true,
                controller: txtServiceType,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Brand (Auto Suggestion)',
                hintText: 'Ex: BMW',
                controller: txtBrandName,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Model (Auto Suggestion)',
                hintText: 'Ex: ABC',
                controller: txtModeName,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Manufacturer',
                hintText: 'Ex: BMW',
                controller: txtManufacturer,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Number Plate',
                hintText: 'Ex: YT123456',
                controller: txtNumberPlate,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 8,
              ),
              LineTextField(
                title: 'Color',
                hintText: 'Ex: red',
                controller: txtColor,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const Divider(),
              const SizedBox(
                height: 15,
              ),
              RoundButtonWidget(
                title: 'REGISTER',
                onPressed: () =>
                    context.push(const VehicleDocumentUploadView()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
