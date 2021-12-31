import 'package:flutter/material.dart';

class NaviButton extends StatelessWidget {
  final IconData icon;
  final String name;

  const NaviButton(this.icon, this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(icon),
      text: name,
    );
  }
}
