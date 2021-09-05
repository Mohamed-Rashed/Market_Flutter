import 'package:flutter/material.dart';
import 'package:market/features/onBoarding/presentation/widget/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
