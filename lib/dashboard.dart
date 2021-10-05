import 'package:flutter/material.dart';
import 'package:pig_e_bank/transaction_history.dart';
import 'package:pig_e_bank/transfer_money.dart';

import 'account.dart';
//import 'package:pig_e_bank/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PIG-E Bank',
          style: TextStyle(
              color: Color(0xFFf8bdd0),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800),
        ),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              //menu or settings
            },
          );
        }),
        actions: [
          Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  //notifications
                }, icon: Icon(Icons.notifications));
          }),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: width,
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Positioned(
                        top: 120,
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(right: 60),
                            child: Text(
                              'Admin',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'Poppins',
                                color: Color(0xFFf8bdd0),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 60),
                            child: Text(
                              '003821934275',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 60),
                            child: Text(
                              'Savings Account',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                height: 500,
                width: 390,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 35, bottom: 20, left: 30),
                          child: ElevatedButton(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 5),
                                      child: Text('Balance',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.grey[800])),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 205, top: 5),
                                      child: Icon(
                                        Icons.navigate_next_rounded,
                                        color: Colors.grey[800],
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 15,
                                  thickness: 0.8,
                                  color: Colors.grey[800],
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 90, top: 28),
                                  child: Text(
                                    'PHP ' + Account.bal.toStringAsFixed(2),
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.grey[800],
                                        fontSize: 31),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFf8bdd0)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(10)),
                                elevation: MaterialStateProperty.all(2),
                                fixedSize:
                                    MaterialStateProperty.all(Size(330, 150))),
                          ),
                        ),
                        //FloatingActionButton.extended(onPressed: (){}, label: Text('Help', style: TextStyle(fontFamily: 'Poppins')), icon: Icon(Icons.help_outline_outlined), backgroundColor: Colors.yellow[800],),
                      ],
                    ),
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 40),
                        child: Text('Transactions',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800],
                                fontSize: 18))),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 20),
                          child: ElevatedButton(
                            child: Text('Transfer Money',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey[800])),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TransferMoney()));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFf8bdd0)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(25)),
                                elevation: MaterialStateProperty.all(2),
                                fixedSize:
                                    MaterialStateProperty.all(Size(150, 150))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 20),
                          child: ElevatedButton(
                            child: Text('Transaction History',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey[800])),
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>  TransactionHistory()));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFf8bdd0)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(25)),
                                elevation: MaterialStateProperty.all(2),
                                fixedSize:
                                    MaterialStateProperty.all(Size(150, 150))),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 220),
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          
                        },
                        label: Text('Help',
                            style: TextStyle(fontFamily: 'Poppins')),
                        icon: Icon(Icons.help_outline_outlined),
                        backgroundColor: Colors.yellow[800],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
