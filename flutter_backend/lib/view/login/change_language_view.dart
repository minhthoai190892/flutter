import 'package:flutter/material.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/view/login/welcom_view.dart';

class ChangeLanguageView extends StatefulWidget {
  const ChangeLanguageView({super.key});

  @override
  State<ChangeLanguageView> createState() => _ChangeLanguageViewState();
}

class _ChangeLanguageViewState extends State<ChangeLanguageView> {
  List listArr = [
    'Arabic',
    'Chinese',
    'English',
    'Korean',
    'Hindi',
  ];
  int selectChange = 2;
  @override
  Widget build(BuildContext context) {
    print('ChangeLanguageView');

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
              'Choose language',
              style: TextStyle(
                  color: TColor.primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: listArr.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  setState(() {
                    selectChange = index;
                  });
                  context.push(WelcomView());
                },
                title: Text(
                  listArr[index],
                  style: TextStyle(
                      fontSize: 25,
                      color: index == selectChange
                          ? TColor.primary
                          : TColor.primaryText),
                ),
                trailing: index == selectChange
                    ? Image.network(
                        'https://img.icons8.com/?size=100&id=sz8cPVwzLrMP&format=png&color=000000',
                        width: 25,
                      )
                    : null,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
