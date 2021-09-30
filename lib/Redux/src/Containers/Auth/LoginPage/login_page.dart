import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlutterLogo(
                size: 100,
              ),
            ),
            TextFormField(
              onChanged: (val) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UserName',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (val) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {}, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
