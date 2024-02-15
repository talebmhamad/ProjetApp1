

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class home2 extends StatefulWidget {
   home2({super.key});

  @override
  
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {    int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    
appBar: AppBar(
  automaticallyImplyLeading: false,
  centerTitle: true, title: const Text("BOBSTORE",style: TextStyle(color: Color.fromARGB(255, 2, 134, 242), fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),backgroundColor:Color.fromARGB(255, 233, 233, 237), ),
  body:
 Container(
  color:Color.fromARGB(255, 233, 233, 237), 

  
 ), 

  bottomNavigationBar: BottomNavigationBar(
    backgroundColor:Color.fromARGB(255, 233, 233, 237), 
    onTap: (value){

      setState(() {
        index=value;
      });
    },
    currentIndex: index,
    items: [
BottomNavigationBarItem(
      icon: Transform.scale(
        scale: 1.5,  
        child: Icon(Icons.home),
      ),
      label: "",
    ),
BottomNavigationBarItem(
      icon: Transform.scale(
        scale: 1.5, 
        child: Icon(Icons.notifications_active_rounded),
      ),
      label: "",
    ),
BottomNavigationBarItem(
      icon: Transform.scale(
        scale: 1.5, 
        child: Icon(Icons.menu),
      ),
      label: "",
    ),

  ]),
    );
  }
}