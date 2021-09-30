import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pig_e_bank/dashboard.dart';
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
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ConfirmTransfer()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle cardTextStyle =
        Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            );

    final BoxDecoration decoration = BoxDecoration(
      gradient: const LinearGradient(
        colors: <Color>[
          BankTheme.orange,
          Color(0xFFFEC18A),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: const BorderRadius.only(
          //topLeft: Radius.circular(30.0),
          //topRight: Radius.circular(30.0),
          ),
      border: Border.all(
        color: BankTheme.black,
        width: 4.0,
      ),
    );

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
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: decoration.copyWith(
                //borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFFFCA7E2),
                    Color(0xFFFC9FD2),
                    Color(0xFFFCD88D),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Savings Account',
                              style: cardTextStyle.copyWith(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '003 821 934 275',
                              style: cardTextStyle.copyWith(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          height: 40.0,
                          //child: Image.network(
                          //'https://www.montyhalls.co.uk/wp-content/uploads/2014/11/logo-visa.png',
                          //),
                        ),
                        const SizedBox(width: 190),
                        Text(
                          'PHP ' + Account.bal.toStringAsFixed(2),
                          style: cardTextStyle.copyWith(
                              fontSize: 22.5, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextField(
                    //keyboardType: TextInputType.number,
                    //inputFormatters: [CustomTextInputFormatter()],
                    style: const TextStyle(color: Colors.white),
                    controller: amountController,
                    decoration: txFldBase.copyWith(
                        labelText: 'Amount',
                        hintText: '0.00',
                        errorText: _isValidAmnt ? 'Enter a valid amount' : null,
                        suffixText: ('PHP '),
                        suffixStyle: const TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    //keyboardType: TextInputType.number,
                    //inputFormatters: [AccountSep()],
                    maxLength: 12,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    style: const TextStyle(color: Colors.white),
                    controller: accountController,
                    decoration: txFldBase.copyWith(
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
                    decoration: txFldBase.copyWith(labelText: 'Message'),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(BankTheme.salmon),
                      ),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(color: BankTheme.black),
                      ),
                      onPressed: () {
                        //print(Account.bal);
                        Account.bal =
                            Account.bal - double.parse(amountController.text);
                        //print(Account.bal);
                        validateFields();
                        if (_isValidAmnt == true && _isValidAcc == true) {
                          validateAmnt();
                        } else {}
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
