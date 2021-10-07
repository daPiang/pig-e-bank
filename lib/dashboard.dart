import 'package:flutter/material.dart';
import 'package:pig_e_bank/balance.dart';
import 'package:pig_e_bank/transaction_history.dart';
import 'package:pig_e_bank/transfer_money.dart';
import 'account.dart';
import 'about.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final snackBar = const SnackBar(content: Text('Unavailable'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Pig-E Bank',
          style: TextStyle(
              color: Color(0xFFf8bdd0),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        leading: null,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 157,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 40),
                      child: CircleAvatar(
                        radius: 45.0,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          Text(Account.accName,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Color(0xFFf8bdd0),
                                  fontWeight: FontWeight.w600)),
                          Text(Account.accNum,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.white)),
                          Text(Account.accType,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 444,
                width: 390,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 40, top: 30),
                        width: double.infinity,
                        child: Text(
                          'Transactions',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                          textAlign: TextAlign.left,
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: IconButton(
                            icon: const Icon(
                                Icons.account_balance_rounded), //balance
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Balance()));
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 60),
                          child: IconButton(
                            icon: const Icon(
                                Icons.health_and_safety_rounded), //donate
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 60),
                          child: IconButton(
                            icon: const Icon(Icons.payment_rounded), //pay bills
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 43),
                          child: Text('Balance',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 65),
                            child: Text('Donate',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                        Padding(
                            padding: EdgeInsets.only(left: 65),
                            child: Text('Pay Bills',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40, top: 25),
                          child: IconButton(
                            icon: const Icon(
                                Icons.how_to_vote_rounded), //transfer money
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TransferMoney()));
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, top: 25),
                          child: IconButton(
                            icon: const Icon(Icons
                                .history_edu_rounded), //transaction history
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TransactionHistory()));
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, top: 25),
                          child: IconButton(
                            icon: const Icon(Icons.analytics_rounded), //invest
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 43),
                            child: Text('Transfer\nMoney',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center)),
                        Container(
                            padding: EdgeInsets.only(left: 50),
                            child: Text(
                              'Transaction\nHistory',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 52),
                            child: Text('Invest',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40, top: 25),
                          child: IconButton(
                            icon: const Icon(Icons.card_giftcard), //send gift
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, top: 25),
                          child: IconButton(
                            icon: const Icon(Icons.sell_rounded), //rewards
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, top: 25),
                          child: IconButton(
                            icon:
                                const Icon(Icons.info_outline_rounded), //about
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const About()));
                            },
                            color: Colors.pinkAccent[100], iconSize: 45,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 38),
                            child: Text('Send Gift',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center)),
                        Container(
                            padding: EdgeInsets.only(left: 60),
                            child: Text(
                              'Rewards',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 65),
                            child: Text('About',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            label: 'Home',
            backgroundColor: Colors.pinkAccent[100],
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.qr_code_2_rounded),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            label: 'QR',
            backgroundColor: Colors.pinkAccent[100],
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            label: 'Settings',
            backgroundColor: Colors.pinkAccent[100],
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.account_box_rounded),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            label: 'Profile',
            backgroundColor: Colors.pinkAccent[100],
          ),
        ],
        selectedItemColor: Colors.blue[900],
      ),
    );
  }
}
