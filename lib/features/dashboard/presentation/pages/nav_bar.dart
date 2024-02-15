import 'package:dairyapp/features/dashboard/presentation/pages/bottom_sheet.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/language_screen.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/order_screen.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/profile.screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  void initState() {
    super.initState();
  }

  int _navIndex = 0;

  List<Widget> NavBarOptions = <Widget>[
    BottomSheetCustom(),
    OrderScreen(),
    LanguageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double pageRatio = MediaQuery.of(context).size.width / baseWidth;

    return Scaffold(
        body: Center(child: NavBarOptions.elementAt(_navIndex)),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            // borderRadius: BorderRadius.only(
            //     topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(96, 86, 85, 85),
                  spreadRadius: 0,
                  blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            // borderRadius: const BorderRadius.only(
            //   topLeft: Radius.circular(30.0),
            //   topRight: Radius.circular(30.0),
            // ),
            child: BottomNavigationBar(
              elevation: 1,
              currentIndex: _navIndex,
              type: BottomNavigationBarType.fixed,
              iconSize: 27,
              showSelectedLabels: true,
              selectedItemColor: Color.fromRGBO(2, 133, 255, 1),
              unselectedItemColor: Color.fromRGBO(148, 148, 148, 1),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.quiz_outlined,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.lock_reset_outlined,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                  ),
                  label: '',
                ),
              ],
              onTap: (index) {
                setState(() {
                  _navIndex = index;
                });
              },
            ),
          ),
        ));
  }
}
