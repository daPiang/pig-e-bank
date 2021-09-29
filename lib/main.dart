import 'package:flutter/material.dart';
import 'package:pig_e_bank/palette.dart';
//import 'package:pig_e_bank/splash_screen.dart';
//import 'package:pig_e_bank/dashboard.dart';
import 'package:flutter/services.dart';
import 'package:pig_e_bank/transfer_money.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pig-E Bank',
      theme: ThemeData(
        scaffoldBackgroundColor: BankTheme.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: TransferMoney(),
    );
  }
}
