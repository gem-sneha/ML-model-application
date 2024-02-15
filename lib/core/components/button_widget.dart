import 'package:dairyapp/core/components/colors.dart';
import 'package:dairyapp/core/components/text_widget.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Color? color;

  const CustomButton({required this.text,
  this.color, super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double pageRatio = MediaQuery.of(context).size.width / baseWidth;
    return Padding(
      padding: EdgeInsets.all(10 * pageRatio),
      child: Container(
        width: baseWidth,
        height: 50 * pageRatio,
        decoration: BoxDecoration(
          color: widget.color ?? ColorConstants.PrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: CustomText(
              text: widget.text,
              color: ColorConstants.ThirdSecondaryColor,
              size: 18,
              weight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
