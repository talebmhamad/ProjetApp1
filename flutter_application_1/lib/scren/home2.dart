

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class home2 extends StatefulWidget {
   home2({super.key});

  @override
  
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {    int index=0;
List<Widget>scren=[home2(),home3()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  automaticallyImplyLeading: false,
  centerTitle: true, title: const Text("home2",),backgroundColor:Color.fromARGB(255, 11, 64, 223),),
  body:
  scren[index],

  bottomNavigationBar: BottomNavigationBar(
    onTap: (value){

      setState(() {
        index=value;
      });
    },
    currentIndex: index,
    items: const[
BottomNavigationBarItem(icon: Icon(Icons.abc),label: ("hello")),
BottomNavigationBarItem(icon: Icon(Icons.accessible),label: ("by"))


  ]),
    );
  }
}