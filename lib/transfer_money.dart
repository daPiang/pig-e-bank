import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'account.dart';
import 'confirm_transfer.dart';
import 'dashboard.dart';
import 'palette.dart';

class TransferMoney extends StatefulWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  _TransferMoneyState createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  final amountController = TextEditingController();
  final accountController = TextEditingController();
  final msgController = TextEditingController();
  bool _isValidAmnt = false;
  bool _isValidAcc = false;

  final lessSnack = const SnackBar(content: Text('Amount less than 200'));
  final greatSnack =
      const SnackBar(content: Text('Amount greater than current balance'));
  final emptySnack = const SnackBar(content: Text('Field cannot be empty'));
  final accSnack =
      const SnackBar(content: Text('Account Number must be 12 digits'));

  String dropdownValue = 'Pig-E Bank';

  @override
  void dispose() {
    amountController.dispose();
    accountController.dispose();
    msgController.dispose();
    super.dispose();
  }

  void validateFields() {
    if (amountController.text.isEmpty == true) {
      ScaffoldMessenger.of(context).showSnackBar(emptySnack);
      _isValidAmnt = false;
    } else {
      if (double.parse(amountController.text) < 200) {
        ScaffoldMessenger.of(context).showSnackBar(lessSnack);
        _isValidAmnt = false;
      } else if (double.parse(amountController.text) > Account.bal) {
        ScaffoldMessenger.of(context).showSnackBar(greatSnack);
        _isValidAmnt = false;
      } else {
        _isValidAmnt = true;
      }
    }
    if (accountController.text.isEmpty == true) {
      ScaffoldMessenger.of(context).showSnackBar(emptySnack);
      _isValidAcc = false;
    } else {
      if (accountController.text.length != 12) {
        ScaffoldMessenger.of(context).showSnackBar(accSnack);
        _isValidAcc = false;
      } else {
        _isValidAcc = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    const InputDecoration txFldBase = InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      counterStyle: TextStyle(color: Colors.white),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      labelStyle: TextStyle(color: Colors.white),
      hintStyle: TextStyle(color: Colors.grey),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1b287d),
        title: const Text(
          'Transfer Money',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
                color: Color(0xFF1b287d),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 45,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'PHP ',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Text(
                              Account.bal.toStringAsFixed(2),
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w100,
                                  fontSize: 30,
                                  color: Colors.white),
                            )
                          ]),
                    ),
                    const Text('AVAILABLE BALANCE',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Colors.white)),
                    const SizedBox(height: 12)
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                Row(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('PHP',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 190,
                    child: TextField(
                      style: const TextStyle(
                          fontFamily: 'Poppins', color: Colors.white),
                      controller: amountController,
                      decoration: txFldBase.copyWith(
                        isDense: true,
                        labelText: 'Amount',
                        hintText: '0.00',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20.7),
                    child: DropdownButton<String>(
                      dropdownColor: Colors.grey[800],
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(
                          fontFamily: 'Poppins', color: Colors.white),
                      underline: Container(
                        height: 1,
                        color: Colors.white,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Pig-E Bank',
                        'GCash',
                        'Paymaya',
                        'BDO',
                        'RCBC',
                        'Landbank',
                        'BPI',
                        'Coins.ph'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ]),
                TextField(
                  maxLength: 12,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: const TextStyle(
                      fontFamily: 'Poppins', color: Colors.white),
                  controller: accountController,
                  decoration: txFldBase.copyWith(
                    isDense: true,
                    labelText: 'Account Number',
                    hintText: '123 456 789 000',
                  ),
                ),
                TextField(
                  maxLength: 20,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: const TextStyle(
                      fontFamily: 'Poppins', color: Colors.white),
                  controller: msgController,
                  decoration: txFldBase.copyWith(
                    labelText: 'Remarks',
                    isDense: true,
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(BankTheme.salmon),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ))),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                          fontFamily: 'Poppins', color: BankTheme.black),
                    ),
                    onPressed: () {
                      validateFields();
                      if (_isValidAmnt == true && _isValidAcc == true) {
                        Account.bal =
                            Account.bal - double.parse(amountController.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmTransfer(
                                      drpVal: dropdownValue,
                                      accNum: accountController.text,
                                      transMsg: msgController.text,
                                      balance: Account.bal,
                                      userAmnt: amountController.text,
                                    )));
                      }
                    }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
