import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction History')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [],
      ),
    );
  }
}
