import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/features/onBoarding/presentation/on_boarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> fadeAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadeAnimation = Tween<double>(begin: 0.2,end: 1).animate(animationController);
    animationController.repeat(reverse: true);
    goToNextView();
    super.initState();
  }
@override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          /*AnimatedBuilder(
            animation: fadeAnimation,
            builder:(context , _) => Opacity(
              opacity: fadeAnimation.value,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 51,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'F',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'ruit Market',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ),*/
          FadeTransition(
            opacity: fadeAnimation,
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 51,
                  color: const Color(0xffffffff),
                ),
                children: [
                  TextSpan(
                    text: 'F',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'ruit Market',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset("assets/images/splash_view_image.png"),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=> OnBoardingView() , transition: Transition.fade);
    });
  }
}
