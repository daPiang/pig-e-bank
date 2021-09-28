import 'package:flutter/material.dart';
import 'package:pig_e_bank/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
