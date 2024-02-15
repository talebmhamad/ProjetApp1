import 'package:flutter/material.dart';
import 'package:flutter_application_1/scren/home2.dart';

class createacct extends StatefulWidget {
  const createacct({super.key});

  @override
  State<createacct> createState() => _createacctState();
}

class _createacctState extends State<createacct> {
  final formkey = GlobalKey<FormState>();
  @override
  bool isObscured = true;
  bool isObscured1 = true;
  Widget build(BuildContext context) {
    return Scaffold( resizeToAvoidBottomInset: false,
appBar: AppBar(backgroundColor: Color.fromARGB(255, 45, 113, 231),),
body:Container(
  color: Color.fromARGB(255, 45, 113, 231),
  child: Form(
   key:formkey ,
    child: 
  Column(
    children:  [ const SizedBox(height: 120,), const Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,
            fontSize: 35,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal // Adjust the font size as needed
          ),),
          ), const SizedBox(height: 60),
        
          Container(
            width: 350,
            decoration: BoxDecoration(
    color: Colors.grey[200], 
    borderRadius: BorderRadius.circular(15),
  ),

            child:
           Center(child: TextFormField(
           validator: (value) {
             if(value!.isEmpty){
              return'enter  name';

              
             }
           },
          decoration: InputDecoration(
      
      // labelText: 'Username',labelStyle: TextStyle(color: const Color.fromARGB(255, 43, 46, 49,),fontWeight: FontWeight.bold,), 
      hintText: 'Enter  username',
      prefixIcon: Icon(Icons.person), 
       border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
       
   
    ),)
  )
  ),
const SizedBox(height: 15),
         
          Container(
            decoration: BoxDecoration(
    color: Colors.grey[200], // Set the background color here
    borderRadius: BorderRadius.circular(15),
  ),
            width: 350,
            
            child:
           Center(child: TextFormField(
            
           
           validator: (value) {
            if(value!.isEmpty){
             return'enter  password';
             }
           },
        
          decoration: InputDecoration(
      // labelText: 'Password', 
      hintText: 'Enter  password',
      prefixIcon: Icon(Icons.lock),
      suffixIcon: IconButton(onPressed: (){
    setState(() {
      
      isObscured1 = !isObscured1; 
    });
      
  
  
  
      },icon:Icon( isObscured1 ? Icons.visibility_off : Icons.visibility,),) ,
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
   
    ),obscureText: isObscured,
          ))
          
          ),
  const SizedBox(height: 15),
         
          Container(
            decoration: BoxDecoration(
    color: Colors.grey[200], // Set the background color here
    borderRadius: BorderRadius.circular(15),
  ),
            width: 350,
            
            child:
           Center(child: TextFormField(
            
           
           validator: (value) {
            if(value!.isEmpty){
             return'enter  password';
             }
           },
        
          decoration: InputDecoration(
      // labelText: 'Password', 
      hintText: 'Confirm password',
      prefixIcon: Icon(Icons.lock),
      suffixIcon: IconButton(onPressed: (){
    setState(() {
      
      isObscured = !isObscured; 
    });
      
  
  
  
      },icon:Icon( isObscured ? Icons.visibility_off : Icons.visibility,),) ,
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
   
    ),obscureText: isObscured,
          ))
          
          ),SizedBox(height: 18),
         ElevatedButton(onPressed: (){

 if(formkey.currentState!.validate()){
Navigator.pushReplacement(context, MaterialPageRoute(builder:(((context) =>home2()))));

 }




}, child: Text("Create  Account"),style: ButtonStyle(
  backgroundColor:MaterialStateProperty.all<Color>(Color.fromARGB(255, 25, 188, 57)),
  foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 249, 248, 248)),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(horizontal: 70, vertical: 5), 
  
  ),
shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9), 
        ),)

  ))
  ]
  ))
    
    )
    
    );
    }}