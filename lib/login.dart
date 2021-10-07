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

  final InputDecoration txFldBase = InputDecoration(
    fillColor: const Color(0xFF29326e),
    filled: true,
    border: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(40)),
    hintStyle: const TextStyle(fontFamily: 'Poppins', color: Colors.white),
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
                style:
                    const TextStyle(fontFamily: 'Poppins', color: Colors.white),
                controller: _userController,
                decoration: txFldBase.copyWith(
                    hintText: 'Username',
                    suffixIcon: const Icon(Icons.person, color: Colors.white)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  style: const TextStyle(
                      fontFamily: 'Poppins', color: Colors.white),
                  controller: _passController,
                  obscureText: _isHidden,
                  decoration: txFldBase.copyWith(
                      hintText: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: _togglePass,
                        child: Icon(
                          _isHidden ? Icons.visibility_off : Icons.visibility,
                          color: Colors.white,
                        ),
                      ))),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(BankTheme.salmon),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  child: const Text(
                    'Login',
                    style:
                        TextStyle(fontFamily: 'Poppins', color: Colors.black),
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
