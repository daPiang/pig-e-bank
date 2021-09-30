import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account.dart';

class ConfirmTransfer extends StatelessWidget {
  const ConfirmTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(
          Account.bal.toStringAsFixed(2),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
    //throw UnimplementedError();
  }
}
