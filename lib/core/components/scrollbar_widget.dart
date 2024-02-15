import 'package:flutter/material.dart';

class CustomScrollBar extends StatelessWidget {
  final Widget child;

  const CustomScrollBar({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      trackVisibility: true,
      thumbColor: Color.fromRGBO(146, 200, 251, 1),
      trackColor: Color.fromRGBO(56, 49, 49, 1),
      radius: Radius.circular(4),
      minThumbLength: 5,
      minOverscrollLength: 5,
      trackBorderColor: Colors.amber,
      thickness: 5,
      child: this.child,
      mainAxisMargin: 20,
      //crossAxisMargin: 10,
      // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    );
  }
}
