import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final Function onTap;

  const MenuButton({required this.onTap, Key? key}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          widget.onTap();
        },
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Text('getUser'),
        ),
      ),
    );
    ;
  }
}
