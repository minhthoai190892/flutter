import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_backend/common/color_extension.dart';
import 'package:flutter_backend/view/login/change_language_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
    load();
  }

  void load() async {
    await Future.delayed(const Duration(seconds: 3));
    loadNextScreen();
  }

  void loadNextScreen() {
    context.push(const ChangeLanguageView());
  }

  @override
  Widget build(BuildContext context) {
    print('SplashView');

    return Scaffold(
      backgroundColor: TColor.bg,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: context.width,
            height: context.height,
            color: TColor.primary,
          ),
          Image.network(
            'https://img.icons8.com/?size=100&id=15174&format=png&color=000000',
            width: context.width * 0.25,
          )
        ],
      ),
    );
  }
}
