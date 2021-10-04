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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/successful.png',
              height: 250.0,
              width: 300.0,
            ),
            Text("Transfer Successful",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                )),
            Padding(
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
                    child: Text('Done'))
              ]),
            ),
          ],
        ),
      ]),
    );
    //throw UnimplementedError();
  }
}
