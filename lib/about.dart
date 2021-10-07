import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'About Us',
          style: TextStyle(fontFamily: 'Poppins'),
        )),
        body: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const <Widget>[
                Text('''GO, PATRICIA\n
                    A 21 year-old Computer Science student from Malayan Colleges Mindanao. I want to work in the field of Virtual and Augmented Reality.\n
                    My Hobbies include playing games, designing streetwear clothing, and spending all my money on GrabFood.''',
                    style: TextStyle(fontFamily: 'Poppins')),
                Divider(
                  color: Colors.white,
                ),
                Text('''VILLAROSA, PATRICIA ANN\n
                    An Information System college student at Malayan Colleges Mindanao who aspires to be a web and software developer in the future.\n
                    I like to dance, playing video games such as Call of Duty, and watch series.''',
                    style: TextStyle(fontFamily: 'Poppins')),
                Divider(
                  color: Colors.white,
                ),
                Text('''PIANG, DATU ANUARUDIN\n
                    An aspiring game dev, currently a second-year EMC student at the well-known Malayan Colleges Mindanao. I love food, music, and videogames. \n
                    I want to create videogames where life memories can be made.''',
                    style: TextStyle(fontFamily: 'Poppins')),
              ],
            ),
          ),
        ));
  }
}
