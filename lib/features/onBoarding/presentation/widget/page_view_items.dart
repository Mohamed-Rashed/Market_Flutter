import 'package:flutter/material.dart';
import 'package:market/core/utlis/size_config.dart';
import 'package:market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key key,this.title , this.subTitle,this.image}) : super(key: key);
  final String title;
  final String subTitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 18,),
        Image.asset(image,width: SizeConfig.defaultSize * 30,height: SizeConfig.defaultSize * 30,),
        const VerticalSpace(value: 2.5,),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(value: 1,),
        Text(
          subTitle,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
