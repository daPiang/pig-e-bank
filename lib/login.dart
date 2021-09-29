import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  final snackBar = SnackBar(content: Text('Invalid Login'));
  bool _isAdmin = false;

  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    super.dispose();
  }

  void authLogin() {
    if (userController.text == "admin" && passController.text == "password") {
      //print('Welcome back, admin.');
      _isAdmin = true;
    } else {
      //print('Unrecognized credentials');
      _isAdmin = false;
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: userController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                fillColor: Colors.pink[100],
              ),
            ),
            TextField(
              controller: passController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                fillColor: Colors.pink[100],
              ),
            ),
            ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  authLogin();
                  if (_isAdmin == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  }
                }),
          ],
        ),
      ),
    );
  }
}
