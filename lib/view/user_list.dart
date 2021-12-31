import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  final dynamic userList;
  const UserList(this.userList, {Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Widget> getUserCard() {
    List<Widget> list = [];
    for (int i = 0; i < 10; i++) {
      // debugPrint('$user');
      list.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Card(
                child: Text(
                    'id=${widget.userList[i]['id']}\nname=${widget.userList[i]['name']}\n\n'),
              ),
            ),
          ],
        ),
      );
    }

    return list;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: getUserCard(),
          ),
        ),
      ),
    );
  }
}
