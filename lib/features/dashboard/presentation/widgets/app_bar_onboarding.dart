import 'package:dairyapp/core/components/colors.dart';
import 'package:flutter/material.dart';

class AppBarOnboarding extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarOnboarding({
    required this.title,
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(180);

  @override
  Widget build(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double pageRatio = MediaQuery.of(context).size.width / baseWidth;
    return AppBar(
      leadingWidth: 80 * pageRatio,
      centerTitle: true,
      leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: ColorConstants.ThirdSecondaryColor,
          ),
          onPressed: () {}),
      flexibleSpace: FlexibleSpaceBar(
        title: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: baseWidth,
          ),
          child: Center(
            child: Container(
              color: Colors.amber,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/head-logo.png',
                height: 640 * pageRatio,
                width: 540 * pageRatio, // Adjust the height as needed
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xff2C9EE0),
    );
    //   title: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       SizedBox(
    //         height: 350 * pageRatio,
    //       ),

    //     ],
    //   ),
    //   centerTitle: true,
    //   backgroundColor: const Color(0xff2C9EE0),
    //   // Add other common AppBar properties here
    // );
    // leading: IconButton(
    //     onPressed: () {},
    //     icon: const Icon(
    //       Icons.arrow_back_ios_new_outlined,
    //       color: Colors.white,
    //     )),
    // title: Image.asset(
    //   'assets/images/head-logo.png',
    //   height: 450 * pageRatio,
    //   width: 450 * pageRatio,
    // ),

    // );
  }
}
