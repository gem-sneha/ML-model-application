import 'package:dairyapp/core/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 16, 76, 117),
          dividerTheme: DividerThemeData(color: Colors.grey)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/getting-started',
      onGenerateRoute: RouterClass.generateRoute,
    );
  }
}
