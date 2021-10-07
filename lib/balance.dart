import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';
import 'account.dart';

class Balance extends StatelessWidget{
  const Balance({Key? key}) : super(key: key);
 
  @override 
  Widget build(BuildContext context){
    
    String accNum = Account.accNum;
    String accName = Account.accName;
    String accType = Account.accType;
    String currency = Account.currency;
    double availBalance = Account.bal;

    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Balance',style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 18)),
      backgroundColor: Color(0xFF181E49),
      leading: IconButton(icon: Icon(Icons.arrow_back_rounded), color: Colors.white, onPressed: (){
        Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Dashboard()));})),
      body: Column(
        children: [ 
          Container(padding: EdgeInsets.symmetric(vertical:25),child: CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.png'), backgroundColor: Colors.transparent, radius: 55,)),
          Container(width:double.infinity,child: Text('Account Number: ' + accNum, style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.w600), textAlign: TextAlign.left,), padding: EdgeInsets.all(20),),
          Container(width:double.infinity,child: Text('Account Name: ' + accName, style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.w600), textAlign: TextAlign.left,), padding: EdgeInsets.all(20),),
          Container(width:double.infinity,child: Text('Available Balance: ' + availBalance.toStringAsFixed(2), style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.w600), ), padding: EdgeInsets.all(20)),
          Container(width:double.infinity,child: Text('Current Account: ' + availBalance.toStringAsFixed(2), style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.w600), ), padding: EdgeInsets.all(20)),
          Container(width:double.infinity,child: Text('Currency: ' + currency, style: TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.w600), ),padding: EdgeInsets.all(20)),
          Container(width:double.infinity,child: Text('Account Type: ' + accType, style: TextStyle(fontFamily: 'Poppins', fontSize: 15,fontWeight: FontWeight.w600), ),padding: EdgeInsets.all(20)),
      ],),
    );
  }
}