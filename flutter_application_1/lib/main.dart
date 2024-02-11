


import 'package:flutter/material.dart';
import 'package:flutter_application_1/class/users.dart';
import 'package:flutter_application_1/scren/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: login(),);
    
  }
} 
class login extends StatefulWidget {
   
 
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final formkey = GlobalKey<FormState>();
  TextEditingController name =TextEditingController();
     TextEditingController password =TextEditingController();
  @override
  bool isObscured = true;
  Widget build(BuildContext context) {
    List<user>users=
    [
      user(id: 1, name: "khaled", password: "1234", isactive: true),
      user(id: 2, name: "wadie", password: "12345", isactive: false)
    ];
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const Drawer(),
appBar: AppBar(title: Text("LOGIN"),backgroundColor: Color.fromARGB(255, 32, 167, 239),centerTitle: true,),
body:Form(
  key: formkey,
  child: 
Column(
  children:  [ const SizedBox(height: 100,), const Center(child: Text("Login",style: TextStyle(
          fontSize: 40,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal // Adjust the font size as needed
        ),),
        ), const SizedBox(height: 60),
      
        Container(
          width: 350,
          
          child:
         Center(child: TextFormField(controller: name,
         validator: (value) {
           if(value!.isEmpty){
            return'enter your name';
           }
         },
        decoration: InputDecoration(
    labelText: 'Username', 
    hintText: 'Enter your username',
    prefixIcon: Icon(Icons.person), 
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
  
 
  ),
        ))
        
        ),
        SizedBox(height: 15),
       
        Container(
          width: 350,
          
          child:
         Center(child: TextFormField(
          
          controller: password,
         validator: (value) {
          if(value!.isEmpty){
           return'enter your password';
           }
         },
      
        decoration: InputDecoration(
    labelText: 'Password', 
    hintText: 'Enter your password',
    
    prefixIcon: IconButton(onPressed: (){
  setState(() {
    
    isObscured = !isObscured; 
  });
    


    },icon:Icon( isObscured ? Icons.visibility_off : Icons.visibility,)) ,
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
 
  ),obscureText: isObscured,
        ))
        
        )
        ,SizedBox(height: 10,),ElevatedButton(onPressed: (){
          if(formkey.currentState!.validate()){

for(user u in users){
if(u.name.toLowerCase()==name.text.toLowerCase() && u.password.toLowerCase()==password.text.toLowerCase()){

Navigator.push(context, MaterialPageRoute(builder: ((context) => home2())));break;

}else{
 
}

}}


        }, child: Text("LOGIN",),
        style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 93, 152, 242)),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Set background color
    textStyle: MaterialStateProperty.all<TextStyle>(
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Set text style
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      EdgeInsets.symmetric(horizontal: 120, vertical: 5), // Set padding
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9), // Set border radius to make it rounded
      ),
    ),
  ),
        )
        
        
        ],
),)










    );
  }
}class home3 extends StatelessWidget {
  const home3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("hi"),);
  }
}

class home4 extends StatelessWidget {
  const home4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("hello"),);
  }
}