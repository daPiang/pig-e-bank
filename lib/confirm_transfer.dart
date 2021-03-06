import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';
import 'package:pig_e_bank/palette.dart';

class ConfirmTransfer extends StatelessWidget {
  final String drpVal, transMsg, accNum, userAmnt;
  final double balance;
  const ConfirmTransfer(
      {Key? key,
      required this.drpVal,
      required this.accNum,
      required this.transMsg,
      required this.balance,
      required this.userAmnt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const Text("Transfer Successfully!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  )),
              Column(
                children: [
                  Container(
                    width: 350,
                    height: 250,
                    color: Colors.pink[50],
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text('Sent to : ',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                  fontSize: 22)),
                        ),
                        Text('Transfer Service : ' ' ' + drpVal,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600],
                                fontSize: 17)),
                        Text('Account Number : ' ' ' + accNum,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600],
                                fontSize: 17)),
                        Text('Amount of Money Sent : ' ' ' + userAmnt,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600],
                                fontSize: 17)),
                        Text('Remarks : ' ' ' + transMsg,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600],
                                fontSize: 17)),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  width: 350,
                  height: 30,
                  color: BankTheme.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Current Balance : ' ' ' + balance.toStringAsFixed(2),
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )),
              InkWell(
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFF8bdd0),
                  ),
                  child: const Center(
                    child: Text(
                      "Done",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ));
  }
}
