import 'package:flutter/material.dart';
import 'package:flutter_test_app/api/account.dart';
import 'package:flutter_test_app/component/menu_button.dart';
import 'package:flutter_test_app/view/user_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> userList = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MenuButton(
          onTap: () async {
            userList = await getAccountList();
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserList(userList),
              ),
            );
          },
        ),
      ],
    );
  }
}
