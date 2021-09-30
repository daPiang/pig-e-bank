import 'package:flutter/material.dart';
import 'package:pig_e_bank/transfer_money.dart';
//import 'package:pig_e_bank/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.menu,
                            color: Colors.lightBlue[100], size: 30.0),
                        Icon(Icons.search,
                            color: Colors.lightBlue[100], size: 25.0),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const Positioned(
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
                            padding: const EdgeInsets.only(right: 60),
                            child: const Text(
                              'Admin',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'Poppins',
                                color: Color(0xFFf8bdd0),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 60),
                            child: const Text(
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
                            padding: const EdgeInsets.only(right: 60),
                            child: const Text(
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
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 500,
                width: 390,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, bottom: 40, left: 30),
                          child: ElevatedButton(
                            child: const Text('Balance Inquiry',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF141c48))),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFf8bdd0)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(25)),
                                elevation: MaterialStateProperty.all(2),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(150, 150))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, bottom: 40, left: 30),
                          child: ElevatedButton(
                            child: const Text('Transaction History',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF141c48))),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFf8bdd0)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(25)),
                                elevation: MaterialStateProperty.all(2),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(150, 150))),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: ElevatedButton(
                            child: const Text('Transfer Money',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF141c48))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TransferMoney()));
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFf8bdd0)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(25)),
                                elevation: MaterialStateProperty.all(2),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(150, 150))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: ElevatedButton(
                            child: const Text('Investments',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF141c48))),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFf8bdd0)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(25)),
                                elevation: MaterialStateProperty.all(2),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(150, 150))),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 230),
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        label: const Text('Help',
                            style: TextStyle(fontFamily: 'Poppins')),
                        icon: const Icon(Icons.help_outline_outlined),
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
