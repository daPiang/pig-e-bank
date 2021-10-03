import 'package:flutter/material.dart';
//import 'package:pig_e_bank/dashboard.dart';
import 'package:pig_e_bank/confirm_transfer.dart';


class TransactionHistory extends StatelessWidget{
  //final String accNum;
  //final String drpVal;
  //final String transMsg;
  const TransactionHistory ({Key? key, 
    //required this.drpVal,
    //required this.accNum,
    //required this.transMsg
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children:[
          AppBar(
            title: const Text('Transaction History',style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 18)),
          ),
          Column(
            children: [
              SizedBox(height: 80,),
              Container(color: Colors.white, height: 560,
                child: Scrollbar(child: ListView.builder(itemCount: 10, itemBuilder: (BuildContext context,int index){
                  return ListTile(title: 
                    Text('Date: 10/11/21'),
                    subtitle: Text('Account Number: 08273792049 \nAmount Transferred: PHP 10,000'),
                    isThreeLine: true,
                    ); 
                    }
                  ),
                ),
              ),
            ],
          )
        ],
      )
      
    );
  }
}