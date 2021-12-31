import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/bottomNavigation/navi_button.dart';
import 'package:flutter_test_app/constant.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({Key? key}) : super(key: key);

  List<Widget> getNaviWidget() {
    List<Widget> list = [];

    for (final menu in naviList) {
      list.add(NaviButton(menu['icon'], menu['name']));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.only(bottom: 10, top: 5),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4,
        unselectedLabelColor: Colors.black38,
        tabs: getNaviWidget(),
      ),
    );
  }
}
