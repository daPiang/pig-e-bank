import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';
import 'package:pig_e_bank/palette.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _userController = TextEditingController();
  final _passController = TextEditingController();
  bool _isHidden = true;

  final snackBar = const SnackBar(content: Text('Invalid Login'));

  @override
  void dispose() {
    _userController.dispose();
    _passController.dispose();
    super.dispose();
  }

  void authLogin() {
    if (_userController.text == "admin" && _passController.text == "password") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Dashboard()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void _togglePass() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  final InputDecoration txFldBase = const InputDecoration(
    enabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    focusedBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    //labelText: 'Username',
    labelStyle: TextStyle(color: Colors.white),
    //suffixIcon: Icon(Icons.person, color: Colors.white)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/pigeBank.png'),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: _userController,
                decoration: txFldBase.copyWith(
                    errorText: _userController.text == 'admin'
                        ? null
                        : 'Invalid Username',
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    labelText: 'Username',
                    suffixIcon: const Icon(Icons.person, color: Colors.white)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: _passController,
                  obscureText: _isHidden,
                  decoration: txFldBase.copyWith(
                      errorText: _passController.text == 'password'
                          ? null
                          : 'Invalid Password',
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      labelText: 'Password',
                      suffixIcon: InkWell(
                        onTap: _togglePass,
                        child: Icon(
                          _isHidden ? Icons.visibility_off : Icons.visibility,
                          color: Colors.white,
                        ),
                      ))),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(BankTheme.salmon),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    authLogin();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
