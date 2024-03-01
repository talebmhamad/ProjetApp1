


import 'package:flutter/material.dart';

import 'package:flutter_application_1/scren/homenews.dart';
import 'package:flutter_application_1/scren/notification.dart';
import 'package:flutter_application_1/scren/settings.dart';
import 'package:flutter_application_1/scren/shop.dart';



class home2 extends StatefulWidget {
   home2({super.key});

  @override
  
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> { 
     int index=0;
List<Widget>scren=[
  homepage(),not(),shop(),settings()

  
];
 bool isappbar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: isappbar? AppBar(
  
  centerTitle: false,  title: const Text("BOBSTORE",style: TextStyle(color: Color.fromARGB(255, 2, 134, 242), fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),backgroundColor:Color.fromARGB(255, 233, 233, 237),
  actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search,color: Color.fromARGB(255, 2, 134, 242),),
              onPressed: () {
             
              },
            ),IconButton(
              icon: Icon(Icons.more_vert,color: Color.fromARGB(255, 2, 134, 242),),
              onPressed: () {
          
              },
            ),]

):null,
  body:scren[index],
  
  
  
 

  bottomNavigationBar: BottomNavigationBar(
   

  
    selectedItemColor:  const Color.fromARGB(255, 3, 71, 244),
    unselectedItemColor: const Color.fromARGB(255, 17, 17, 17),
    backgroundColor:const Color.fromARGB(255, 233, 233, 237), 
    onTap: (value){

      setState(() {
            index = value;
            if (value == 3) {
              // If the "shop" tab is selected, hide the AppBar
              isappbar = false;
            } else {
              isappbar = true;
            }
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
        child: Icon(Icons.shopping_cart),
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