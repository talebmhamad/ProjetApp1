import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/scren/home2.dart';

import 'package:shared_preferences/shared_preferences.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}
getid() async{
  SharedPreferences local =await SharedPreferences.getInstance();
  var id =local.getInt('id');
  return id;
 }
class _checkState extends State<check> {


void initState() {

    super.initState();
    checkLoginStatus();
    
}
void checkLoginStatus() async {
    SharedPreferences local = await SharedPreferences.getInstance();
    var id = local.getInt('id') ?? -1;

    if (!(id <=0)  ) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home2()), // Replace current screen with Home2
      );
    } else  {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()), // Replace current screen with Login
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
body: Column(
children: [Text("loading")],


),
    );
  }
}