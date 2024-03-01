

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

import 'package:shared_preferences/shared_preferences.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _MyWidgetState();
  
}
void removeDataFromSharedPreferences() async {
    SharedPreferences local = await SharedPreferences.getInstance();
    local.remove('id'); 

  }
getname() async{
  SharedPreferences local =await SharedPreferences.getInstance();
  var name=local.getString('name');
  
  print(name);
 }
   void checkLoginStatus() async {
    SharedPreferences local = await SharedPreferences.getInstance();
    var id = local.getInt('id');
    }


class _MyWidgetState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Menu",style: TextStyle(color: Color.fromARGB(255, 4, 106, 189), fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),backgroundColor:Color.fromARGB(255, 255, 255, 255),
      actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings,color: Color.fromARGB(255, 2, 134, 242),),
              onPressed: () {
                
              },
            ),IconButton(
              icon: Icon(Icons.search,color: Color.fromARGB(255, 2, 134, 242),),
              onPressed: () {
                // Add your onPressed functionality here
                print('More button pressed');
              },
            ),]
      ),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: [
          
    Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Icon(
        Icons.person,
        size: 100,
        color: Color.fromARGB(255, 2, 134, 242),
      ),
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Wadie Taleb",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Account Name",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  ],
),
      SizedBox(height: 30,),
          ListTile(
            leading: Icon(Icons.language,color:Colors.blue,),
            title: const Text('Account Information'),
            onTap: () {
              
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.security,color: Colors.blue,),
            title: Text('Security'),
            onTap: () {
         
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle,color: Colors.blue,),
            title: Text('Language'),
            onTap: () {
              
             
            },
          ),
           Divider(),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.blue,),
            title: Text('Settings'),
            onTap: () {
              
             
            },
          ),
         Divider(),
          ListTile(
            leading: Icon(Icons.help_center,color: Colors.blue),
            title: Text('Help Center'),
            onTap: () {
              
             
            },
          ),Divider(),
          ListTile(
            leading: Icon(Icons.report_problem,color: Colors.blue,),
            title: Text('Report a Problem'),
            onTap: () {
              
             
            },
          ),
          
        
          
          SizedBox(height: 20), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.facebook,color: Colors.blue,),
                onPressed: () {
                 
                },
                tooltip: 'Link Facebook',
              ),
             
              IconButton(
                icon: Icon(Icons.email,color:Colors.red,),
                onPressed: () {
                 
                },
                tooltip: 'Link Gmail',
              ),
            ],
          ),
          SizedBox(height: 10), 
          TextButton(
            onPressed: () {
              
      showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Center(
        child: Text(
          "Confirm Logout",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      content: const Text(
        "Are you sure you want to log out?",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
              removeDataFromSharedPreferences();
          Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => login()), 
                  (route) => false, 
                );
              },
              child: Text("Yes"),
            ),
          ],
        );
      },
    );
  
            },
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.exit_to_app, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  'Log Out',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}