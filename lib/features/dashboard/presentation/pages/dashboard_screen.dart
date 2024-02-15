import 'package:dairyapp/features/dashboard/presentation/pages/bottom_sheet.dart';
import 'package:dairyapp/features/dashboard/presentation/pages/side_drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (width > 600) {
            return const SideDrawer();
          } else {
            return const BottomSheetCustom();
          }
        },
      ),
    );
  }
}
