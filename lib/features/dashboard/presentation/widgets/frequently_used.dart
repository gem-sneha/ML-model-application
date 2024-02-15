import 'package:dairyapp/core/components/colors.dart';
import 'package:dairyapp/core/components/text_widget.dart';
import 'package:flutter/material.dart';

class FrequentlyUsedBoxes extends StatelessWidget {
  final Color backgroundColor, iconColor;
  final IconData icon;
  final String text;
  const FrequentlyUsedBoxes(
      {super.key,
      required this.backgroundColor,
      required this.iconColor,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 100,
      child: Column(children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: backgroundColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: iconColor,
              )),
        ),
        CustomText(
          text: text,
          size: 14,
          color: ColorConstants.SecondaryColor,
          weight: FontWeight.w500,
        ),
      ]),
    );
  }
}
