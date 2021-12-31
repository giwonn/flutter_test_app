import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/bottomNavigation/navi_bar.dart';
import 'package:flutter_test_app/view/setting.dart';
import 'package:flutter_test_app/view/user.dart';

import 'home.dart';

class Index extends StatefulWidget {
  const Index({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> screenList = [const Home(), const User(), const Settings()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TabBarView(
        children: screenList,
      ),
      bottomNavigationBar: const NaviBar(),
    );
  }
}
