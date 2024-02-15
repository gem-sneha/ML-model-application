// import 'package:dairyapp/core/components/text_widget.dart';
// import 'package:dairyapp/core/cubits/getCategoryCubit/get_category_cubit.dart';
// import 'package:dairyapp/core/cubits/getCategoryCubit/get_category_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class CategoryScreen extends StatefulWidget {
//   const CategoryScreen({super.key});

//   @override
//   State<CategoryScreen> createState() => _CategoryScreenState();
// }

// class _CategoryScreenState extends State<CategoryScreen> {
//   @override
//   void initState() {
//     super.initState();

//     final getCategories = context.read<GetCategoryCubit>();
//     getCategories.getCategories();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = MediaQuery.of(context).size.width;
//     double pageRatio = MediaQuery.of(context).size.width / baseWidth;
//     final ScrollController scrollController = ScrollController();
//     return BlocConsumer<GetCategoryCubit, GetCategoryState>(
//         listener: (context, state) {
//       print(state);
//       if (state is GetCategoryLoading) {
//         CircularProgressIndicator();
//       } else if (state is GetCategorySuccess) {}
//     }, builder: (context, state) {
//       if (state is GetCategorySuccess) {
//         print(
//             "==============================================================${state.response.length}");
//         return Padding(
//           padding: const EdgeInsets.only(top: 48.0),
//           child: Row(children: [
//             Expanded(
//                 flex: 4,
//                 child: GridView.count(
//                     crossAxisCount: 3,
//                     crossAxisSpacing: 0,
//                     mainAxisSpacing: 0,
//                     childAspectRatio: 0.7,
//                     padding: EdgeInsets.zero,
//                     shrinkWrap: true,
//                     children: List.generate(
//                       state.response.length,
//                       (index) {
//                         return Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 2, 2, 2.0),
//                           child: Card(
//                             child: Padding(
//                               padding: EdgeInsets.all(5),
//                               child: Container(
//                                   height: 500,
//                                   width: 100,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     border: Border.all(
//                                       color: Colors.white,
//                                       width: 2.0,
//                                     ),
//                                   ),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Image.asset(
//                                         'assets/images/amul-milk.png',
//                                         // state.response.data![index].image!,
//                                         height: 100 * pageRatio,
//                                         width: 100 * pageRatio,
//                                       ),
//                                       // SizedBox(
//                                       //   height: 30 * pageRatio,
//                                       // ),
//                                       CustomText(
//                                           text: state.response[index].name,
//                                           size: 12 * pageRatio,
//                                           color:
//                                               Color.fromARGB(255, 49, 48, 48),
//                                           weight: FontWeight.w600),
//                                     ],
//                                   )),
//                             ),
//                           ),
//                         );
//                       },
//                     ))),
//           ]),
//         );
//       } else
//         return SizedBox();
//     });
//   }
// }
