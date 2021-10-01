import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';
import 'account.dart';

class ConfirmTransfer extends StatelessWidget {
  final String drpVal;
  final String transMsg;
  final String accNum;
  const ConfirmTransfer(
      {Key? key,
      required this.drpVal,
      required this.accNum,
      required this.transMsg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(children: [
          Text(
            Account.bal.toStringAsFixed(2) + ' ' + drpVal,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            transMsg + ' ' + accNum,
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
