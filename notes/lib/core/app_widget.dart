import 'package:flutter/material.dart';
import 'package:notes/pages/create_note_page/create_note_page.dart';
import 'package:notes/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        title: "Notes",
        initialRoute: "/home",
        routes: {
          "/home": (context) => const HomePage(),
          "/create-note": (context) => const CreateNotePage()
        });
  }
}
