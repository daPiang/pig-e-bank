import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';
import 'package:pig_e_bank/transaction_history.dart';
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
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/successful.png',
                height: 250.0,
                width: 300.0,
              ),
                Text(
                  "Transfer Successfully!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  )
                ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.pink[50],
                padding: EdgeInsets.only(left: 40),
                child: Text('Sent to:',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                  fontSize: 18))),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
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

                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //   builder: (context) => TransactionHistory(transMsg: transMsg,accNum: accNum, drpVal: drpVal,)
                              //   ));
                            },
                            child: Text('Done'))
                      ]),
                    ),
                  ],
                ),
              
            ],
          ),
        ),
      );
    //throw UnimplementedError();
  }
}
