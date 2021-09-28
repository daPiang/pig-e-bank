import 'package:flutter/material.dart';
import 'package:pig_e_bank/login.dart';
import 'package:pig_e_bank/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: const Login(),
        initialRoute: '',
        routes: {
          '/': (context) => const Login(),
          '/second': (context) => const Dashboard(),
        });
  }
}
