import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('About Us')),
        body: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const <Widget>[
                Text('''Go, Patricia\n
                    Placeholder
                    
                    '''),
                Text('''Villarosa, Patricia\n
                    Placeholder
                    
                    '''),
                Text('''Piang, Datu Anuarudin\n
                    An aspiring game dev, currently a second-year EMC student at the well-known Malayan Colleges Mindanao. Loves food, music, and videogames.'''),
              ],
            ),
          ),
        ));
  }
}
