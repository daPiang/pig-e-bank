import 'package:flutter/material.dart';

import 'palette.dart';

class TransferMoney extends StatelessWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle cardTextStyle = Theme.of(context).textTheme.subtitle1!.copyWith(
          color: Colors.white,
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
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      border: Border.all(
        color: BankTheme.black,
        width: 4.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Money'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            decoration: decoration.copyWith(
              borderRadius: BorderRadius.circular(30),
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
                            'Debit Card',
                            style: cardTextStyle.copyWith(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '003-821-934-275',
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
                    children: <Widget> [
                      Container(
                        height: 40.0,
                        child: Image.network(
                          'https://www.montyhalls.co.uk/wp-content/uploads/2014/11/logo-visa.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}