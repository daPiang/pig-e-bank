import 'package:flutter/material.dart';
import 'package:pig_e_bank/login.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 400,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/clients.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
         SizedBox(
           height: 20,
         ),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text(
                 "Hey there, \nWelcome back",
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  child: Container(
                    height: 70,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color (0xFFF8bdd0),
                    ),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}

