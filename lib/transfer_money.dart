import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'account.dart';
import 'confirm_transfer.dart';
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

  String dropdownValue = 'Pig-E Bank';

  @override
  void dispose() {
    amountController.dispose();
    accountController.dispose();
    msgController.dispose();
    super.dispose();
  }

  void validateFields() {
    if (amountController.text.isNotEmpty == true) {
      _isValidAmnt = true;
    } else {
      _isValidAmnt = false;
    }
    if (accountController.text.length == 12) {
      _isValidAcc = true;
    } else {
      _isValidAcc = false;
    }
  }

  void validateAmnt() {
    if (double.parse(amountController.text) > Account.bal) {
      ScaffoldMessenger.of(context).showSnackBar(greatSnack);
    } else if (double.parse(amountController.text) < 200) {
      ScaffoldMessenger.of(context).showSnackBar(lessSnack);
    } else {
      Account.bal = Account.bal - double.parse(amountController.text);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ConfirmTransfer(
                    drpVal: dropdownValue,
                    accNum: accountController.text,
                    transMsg: msgController.text,
                  )));
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
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1b287d),
        title: const Text('Transfer Money'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        reverse: true,
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
                      height: 37,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'PHP ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              Account.bal.toStringAsFixed(2),
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            )
                          ]),
                    ),
                    const Text('AVAILABLE BALANCE',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
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
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 202,
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: amountController,
                      decoration: txFldBase.copyWith(
                        isDense: true,
                        labelText: 'Amount',
                        hintText: '0.00',
                        errorText: _isValidAmnt ? 'Enter a valid amount' : null,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        DropdownButton<String>(
                          dropdownColor: Colors.grey[800],
                          value: dropdownValue,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.white),
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
                      ],
                    ),
                  ),
                ]),
                TextField(
                  maxLength: 12,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: const TextStyle(color: Colors.white),
                  controller: accountController,
                  decoration: txFldBase.copyWith(
                      isDense: true,
                      labelText: 'Account Number',
                      hintText: '123 456 789 000',
                      errorText: _isValidAcc
                          ? 'Enter a 12-digit acocunt number'
                          : null),
                ),
                TextField(
                  maxLength: 60,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  style: const TextStyle(color: Colors.white),
                  controller: msgController,
                  decoration: txFldBase.copyWith(
                    labelText: 'Message',
                    isDense: true,
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(BankTheme.salmon),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(color: BankTheme.black),
                    ),
                    onPressed: () {
                      validateFields();
                      if (_isValidAmnt == true && _isValidAcc == true) {
                        validateAmnt();
                      } else {}
                    }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
