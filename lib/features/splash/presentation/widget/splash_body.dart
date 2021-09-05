import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Text.rich(
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
            textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
          Image.asset("assets/images/splash_view_image.png"),
        ],
      ),
    );
  }
}
