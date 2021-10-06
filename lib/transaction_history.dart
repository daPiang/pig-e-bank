import 'package:flutter/material.dart';
import 'package:pig_e_bank/dashboard.dart';
import 'package:pig_e_bank/transactions.dart';

class TransactionHistory extends StatelessWidget{
  const TransactionHistory ({Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    List<dynamic> responseList = TRANSACTION_DATA;
    
    return Scaffold(
      body: Column(
        children:[
          AppBar(
            title: const Text('Transaction History',style: TextStyle(fontFamily: 'Poppins', color: Colors.white, fontSize: 18)),
            leading: IconButton(icon: Icon(Icons.arrow_back_rounded), color: Colors.white, onPressed: (){
              Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Dashboard()));
            },),
            
          ),
          Column(
            children: [
              SizedBox(height: 25),
              Container(color: Colors.white, height: 550,
                child: Scrollbar(
                  child: ListView.builder(
                    itemCount: 10, 
                    itemBuilder: (BuildContext context,int index){
                      return ListTile(
                        title: Text("Account Number: "+responseList[index][0]),
                        subtitle: Text(responseList[index][1] + "\nPHP"+ responseList[index][2]),
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