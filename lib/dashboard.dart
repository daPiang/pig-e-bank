import 'package:flutter/material.dart';
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
              Container(
              height: 200,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15),
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
                        Positioned(
                          top:120,
                          child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage('assets/images/avatar.png'),
                          backgroundColor: Colors.transparent,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(right: 60),
                              child: Text(
                                '[Name]',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'Poppins',
                                color: Color (0xFFf8bdd0),
                                fontWeight: FontWeight.w800,
                                      ),
                                    ),
                            ),
                                  Container(
                                    padding: EdgeInsets.only(right: 60),
                                    child: Text(
                                      'Account Number',
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
                padding:  EdgeInsets.only(top:10),
                child: Container(height: 500,width: 390,
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50,bottom:50, left: 30),
                        child: ElevatedButton(
                          child: Text('Balance Inquiry', style:TextStyle(fontFamily: 'Poppins', color: Color(0xFF141c48))),
                          onPressed: (){

                          }, 
                          style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Color (0xFFf8bdd0)),
                           shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                          padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                          elevation: MaterialStateProperty.all(0),
                          fixedSize: MaterialStateProperty.all(Size(150, 150))
                         ),),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(top: 50,bottom:50, left: 30),
                        child: ElevatedButton(
                          child: Text('Transaction History',style:TextStyle(fontFamily: 'Poppins', color: Color(0xFF141c48))),
                          onPressed: (){
                            
                          }, 
                          style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Color (0xFFf8bdd0)),
                           shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                          padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                          elevation: MaterialStateProperty.all(0),
                          fixedSize: MaterialStateProperty.all(Size(150, 150))
                         ),),
                      ),
                      ],),
                    Row(children: [
                       Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: ElevatedButton(
                          child: Text('Transfer Money',style:TextStyle(fontFamily: 'Poppins', color: Color(0xFF141c48))),
                          onPressed: (){

                          }, 
                          style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Color (0xFFf8bdd0)),
                           shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                          padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                          elevation: MaterialStateProperty.all(0),
                          fixedSize: MaterialStateProperty.all(Size(150, 150))
                         ),),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: ElevatedButton(
                          child: Text('Investments',style:TextStyle(fontFamily: 'Poppins', color: Color(0xFF141c48))),
                          onPressed: (){

                          }, 
                          style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Color (0xFFf8bdd0)),
                           shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                          padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                          elevation: MaterialStateProperty.all(0),
                          fixedSize: MaterialStateProperty.all(Size(150, 150))
                         ),),
                      ),
                    ],
                    )
                  ],
                ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
                ),
              ) ,
            ],
        
          ),
        
      ),
    );
  }
  }
 


