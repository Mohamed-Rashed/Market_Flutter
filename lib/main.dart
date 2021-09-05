import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/splash/presentation/splash_view.dart';

void main() {
  runApp(Market());
}

class Market extends StatelessWidget {
  const Market({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

