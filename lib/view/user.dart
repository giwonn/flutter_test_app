import 'package:flutter/material.dart';
import 'package:flutter_test_app/api/login.dart';
import 'package:flutter_test_app/api/account.dart';
import 'package:url_launcher/url_launcher.dart';

import 'login_failed.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  String redirectUrl = 'ee';

  @override
  void initState() {
    super.initState();
    getAccountList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final url = await login(redirectUrl);
            // http.Response loginResp = await http.get(url);
            bool res = await launch(url);
            debugPrint("res: ${res.toString()}");

            if (res) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const User(),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginFailed(),
                ),
              );
            }
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
