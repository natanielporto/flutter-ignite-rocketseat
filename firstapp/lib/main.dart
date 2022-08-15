import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

var count = 0;

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first app",
      home: const HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.blue,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.red),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.black87,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      ),
    );
  }
}

AppBar navBar() {
  return AppBar(
    title: const Text("News"),
  );
}

class BodyText extends StatelessWidget {
  const BodyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Conter $count",
          style: const TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: const BodyText(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}
