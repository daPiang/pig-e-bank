import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';

import 'account.dart';

class ConfirmTransfer extends StatelessWidget {
  const ConfirmTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(children: [
          Text(
            Account.bal.toStringAsFixed(2),
            style: TextStyle(color: Colors.white),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Text('Test'))
        ]),
      ),
    );
    //throw UnimplementedError();
  }
}
