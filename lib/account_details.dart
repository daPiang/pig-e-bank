import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
      ),
    );
  }
}
