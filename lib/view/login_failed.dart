import 'package:flutter/material.dart';

class LoginFailed extends StatelessWidget {
  const LoginFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Login Failed'),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('back'),
            )
          ],
        ),
      ),
    );
  }
}
