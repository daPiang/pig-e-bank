import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';
import 'package:pig_e_bank/palette.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  final snackBar = const SnackBar(content: Text('Invalid Login'));
  bool _isAdmin = false;

  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    super.dispose();
  }

  void authLogin() {
    if (userController.text == "admin" && passController.text == "password") {
      _isAdmin = true;
    } else {
      _isAdmin = false;
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/pigeBank.png'),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  style: const TextStyle(color: BankTheme.salmon),
                  controller: userController,
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: BankTheme.salmon)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: BankTheme.salmon)),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: BankTheme.salmon),
                      suffixIcon: Icon(Icons.person, color: BankTheme.salmon)),
                ),
              ),
              TextField(
                style: const TextStyle(color: BankTheme.salmon),
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: BankTheme.salmon)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: BankTheme.salmon)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: BankTheme.salmon),
                    suffixIcon: Icon(Icons.lock_outline_rounded,
                        color: BankTheme.salmon)),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(BankTheme.salmon),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    authLogin();
                    if (_isAdmin == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()));
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
