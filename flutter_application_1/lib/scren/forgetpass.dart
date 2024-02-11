import 'package:flutter/material.dart';

class forget extends StatefulWidget {
   forget({super.key});

  @override
  State<forget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<forget> {
  @override
  bool isvisible = false;
  Widget build(BuildContext context) {
    return Scaffold(


resizeToAvoidBottomInset: false,
appBar: AppBar(backgroundColor: Color.fromARGB(255, 45, 113, 231),),
body:Container(
  color: Color.fromARGB(255, 45, 113, 231),
  child: Form(
   
    child: 
  Column(
    children:  [ const SizedBox(height: 120,), const Center(child: Text("recent code",style: TextStyle(color: Colors.white,
            fontSize: 35,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal // Adjust the font size as needed
          ),),
          ), const SizedBox(height: 60),
        
          Visibility(
            child:  Container(
                  
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey[200], 
                borderRadius: BorderRadius.circular(15),
              ),
            
              child:
             Center(child: TextFormField(
             validator: (value) {
               if(value!.isEmpty){
                return'enter your email';
            
                
               }
             },
            decoration: InputDecoration(
                  
                  // labelText: 'Username',labelStyle: TextStyle(color: const Color.fromARGB(255, 43, 46, 49,),fontWeight: FontWeight.bold,), 
                  hintText: 'Enter your Email',
                  prefixIcon: Icon(Icons.person), 
                   border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                   
               
                ),)
              )
              ),
              visible: !isvisible,
          ),
Visibility(
  child: Container(
    
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
        
       
        hintText: 'Enter Code',
        prefixIcon: Icon(Icons.lock), 
         border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
         
     
      ),)
    )
    ),
    visible: isvisible,
),


 const SizedBox(height: 18),
         Visibility(
           child: ElevatedButton(onPressed: (){
           
           setState(() {
                isvisible = !isvisible;
              });
           
           
           
           
           },  child:  Text("send code",style: TextStyle(fontSize:18 ),),style: ButtonStyle(
             backgroundColor:MaterialStateProperty.all<Color>(Color.fromARGB(255, 25, 188, 57)),
             foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 249, 248, 248)),
             padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                   EdgeInsets.symmetric(horizontal: 70, vertical: 5), 
            
             ),
           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9), 
                   ),)
           
             )),visible: !isvisible,
         ),

  Visibility(
    child: ElevatedButton(onPressed: (){}, child: Text("Confirm",style: TextStyle(fontSize:18 ),),style: ButtonStyle(
    backgroundColor:MaterialStateProperty.all<Color>(Color.fromARGB(255, 25, 188, 57)),
    foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 249, 248, 248)),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 70, vertical: 5), 
     
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9), 
          ),))),visible: isvisible,
  )

    ]
  )))
    );
  }
}