import 'package:dairyapp/core/components/colors.dart';
import 'package:dairyapp/core/components/scrollbar_widget.dart';
import 'package:dairyapp/core/components/text_widget.dart';
import 'package:dairyapp/core/cubits/getCategoryCubit/get_category_cubit.dart';
import 'package:dairyapp/core/cubits/getCategoryCubit/get_category_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogMain extends StatefulWidget {
  const CatalogMain({super.key});

  @override
  State<CatalogMain> createState() => _CatalogMainState();
}

class _CatalogMainState extends State<CatalogMain> {
  @override
  void initState() {
    super.initState();

 
    context.read<GetCategoryCubit>().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double pageRatio = MediaQuery.of(context).size.width / baseWidth;
   
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: Row(children: [
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.white,
              child: CustomScrollBar(
                child: BlocConsumer<GetCategoryCubit, GetCategoryState>(
                    listener: (context, state) {
                  if (state is GetCategoryLoading) {
                    CircularProgressIndicator();
                  } else if (state is GetCategorySuccess) {}
                }, builder: (context, state) {
                  if (state is GetCategorySuccess) {
                    return ListView.builder(
                      itemCount: state.response.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromARGB(255, 235, 238, 239),
                                child: Image.asset(
                                  "assets/images/Milk.png",
                                  height: 150 * pageRatio,
                                  width: 150 * pageRatio,
                                ),
                              ),
                              CustomText(
                                  text: state.response[index].name,
                                  size: 12 * pageRatio,
                                  color: Color.fromARGB(255, 78, 74, 74),
                                  weight: FontWeight.w400),
                            ],
                          ),
                        );
                      },
                    );
                  } else
                    return SizedBox();
                }),
              )),
        ),
        Expanded(
            flex: 4,
            child: Container(
                color: Color.fromARGB(255, 235, 238, 239),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 0.5,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: List.generate(
                      20,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2.0),
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                  height: 500,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/amul-milk.png',
                                        height: 120 * pageRatio,
                                        width: 120 * pageRatio,
                                      ),
                                      CustomText(
                                          text: "Amul Moti Toned Milk(90 Days)",
                                          size: 14 * pageRatio,
                                          color:
                                              Color.fromARGB(255, 49, 48, 48),
                                          weight: FontWeight.w600),
                                      CustomText(
                                          text: "450 ml",
                                          size: 12 * pageRatio,
                                          color:
                                              Color.fromARGB(255, 78, 74, 74),
                                          weight: FontWeight.w400),
                                      SizedBox(
                                        height: 30 * pageRatio,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                              text: "Rs33",
                                              size: 12 * pageRatio,
                                              color: Color.fromARGB(
                                                  255, 49, 48, 48),
                                              weight: FontWeight.w600),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: 30 * pageRatio,
                                              width: 70 * pageRatio,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 42, 128, 66),
                                                      width: 1.0)),
                                              child: Center(
                                                child: CustomText(
                                                    text: "ADD",
                                                    size: 12 * pageRatio,
                                                    color: Color.fromARGB(
                                                        255, 42, 128, 66),
                                                    weight: FontWeight.w700),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        );
                      },
                    )))),
      ]),
    ));
  }
}
