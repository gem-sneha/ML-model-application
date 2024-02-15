import 'package:dairyapp/core/components/colors.dart';
import 'package:dairyapp/core/components/text_widget.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/catalog.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/language_screen.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/order_screen.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/profile.screen.dart';
import 'package:dairyapp/features/dashboard/presentation/widgets/frequently_used.dart';
import 'package:flutter/material.dart';

class BottomSheetCustom extends StatefulWidget {
  const BottomSheetCustom({super.key});

  @override
  State<BottomSheetCustom> createState() => _BottomSheetCustomState();
}

class _BottomSheetCustomState extends State<BottomSheetCustom>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  int _navIndex = 0;
  List<Widget> NavBarOptions = <Widget>[
    Dashboard(),
    OrderScreen(),
    LanguageScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    width: width,
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          color: ColorConstants.PrimaryColor,
                          child: Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: Colors.white,
                                      )),
                                  Image.asset('assets/images/head-logo.png'),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.web_sharp,
                                            color: Colors.white,
                                          )),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.notifications_active_outlined,
                                            color: Colors.white,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  top: 110,
                  child: SizedBox(
                    width: width,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16.0, 0, 0, 10),
                          child: CustomText(
                            text: 'Hey Vicky!',
                            size: 22,
                            color: ColorConstants.ThirdSecondaryColor,
                            weight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  spreadRadius: 5.0,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  filled: true,
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Search ...',
                                  fillColor: Colors.white,
                                  focusColor: Colors.white,
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ]),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/dashboard_horizontal.png'),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10.0),
                      child: CustomText(
                        text: 'Frequently Used',
                        size: 18,
                        color: ColorConstants.SecondaryColor,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FrequentlyUsedBoxes(
                          backgroundColor: Color.fromARGB(255, 203, 235, 221),
                          iconColor: Color(0xff38D79F),
                          text: 'Buy',
                          icon: Icons.shopping_bag_outlined,
                        ),
                        FrequentlyUsedBoxes(
                          backgroundColor: Color.fromARGB(255, 238, 201, 199),
                          iconColor: Color(0xffff6e66),
                          text: 'Sell',
                          icon: Icons.sell,
                        ),
                        FrequentlyUsedBoxes(
                          backgroundColor: Color.fromARGB(255, 245, 229, 189),
                          iconColor: Color(0xffFFC633),
                          text: 'Account',
                          icon: Icons.person,
                        ),
                        FrequentlyUsedBoxes(
                          backgroundColor: Color.fromARGB(255, 193, 197, 243),
                          iconColor: Color(0xff3642DA),
                          text: 'Settings',
                          icon: Icons.settings,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(
                        text: 'Our Services',
                        size: 18,
                        color: ColorConstants.SecondaryColor,
                        weight: FontWeight.w600,
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            child: const Card(
                              color: ColorConstants.ThirdSecondaryColor,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: Color(0xffff6e66),
                                    ),
                                    Text('Customers')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderScreen(),
                                ),
                              );
                            },
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CatalogMain(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 80,
                                width: 150,
                                child: const Card(
                                  color: ColorConstants.ThirdSecondaryColor,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.people,
                                          color: Color(0xff4CA6A8),
                                        ),
                                        CustomText(
                                          text: 'Products',
                                          size: 16,
                                          color: ColorConstants.SecondaryColor,
                                          weight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            child: const Card(
                              color: ColorConstants.ThirdSecondaryColor,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: Color(0xffF04DF0),
                                    ),
                                    Text('Balance')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 80,
                            width: 150,
                            child: const Card(
                              color: ColorConstants.ThirdSecondaryColor,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: Colors.red,
                                    ),
                                    Text('More')
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    
    );
  }
}
