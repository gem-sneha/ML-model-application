import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              color: Colors.blueAccent,
            )),
            const ListTile(
              leading: Icon(Icons.home),
            ),
            const ListTile(
              leading: Icon(Icons.headphones),
            ),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
            )
          ],
        ),
      ),
      // body: Container(
      //   color: Colors.purple,
      // ),
    );
  }
}
