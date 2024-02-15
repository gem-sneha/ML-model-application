import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> languages = [
      "English",
      "Hindi",
      "Marathi",
      "Gujarati",
      "Kannada",
      "Bengali",
      "Telugu"
    ];

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.blue,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Choose the Language",
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
      body: Column(children: [
        ListView.separated(
          itemCount: languages.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return RadioListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text(languages[index]),
              groupValue: Text(languages[index]),
              onChanged: (b) {},
              value: Text(languages[index]),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ]),
    );
  }
}
