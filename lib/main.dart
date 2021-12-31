import 'package:flutter/material.dart';
import 'package:flutter_test_app/view/index.dart';
import 'constant.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: naviList.length,
        child: const Index(
          title: 'Flutter App',
        ),
      ),
    );
  }
}
