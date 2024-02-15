import 'package:flutter/material.dart';

class forget extends StatefulWidget {
   forget({super.key});

  @override
  State<forget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<forget> {
  final formkey = GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
   TextEditingController code=TextEditingController();
  @override
  bool isvisible = false;
  Widget build(BuildContext context) {
    return Scaffold(


resizeToAvoidBottomInset: false,
appBar: AppBar(backgroundColor: const Color.fromARGB(255, 45, 113, 231),),
body:Container(
  color: const Color.fromARGB(255, 45, 113, 231),
  child: Form(
    key: formkey,
   
    child: 
  Column(
    children:  [ const SizedBox(height: 120,), const Center(child: Text("recent password",style: TextStyle(color: Colors.white,
            fontSize: 35,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal // Adjust the font size as needed
          ),),
          ), const SizedBox(height: 60),
        
          Visibility(
            visible: !isvisible,
            child:  Container(
                  
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey[200], 
                borderRadius: BorderRadius.circular(15),
              ),
            
              child:
             Center(child: TextFormField(
              controller: email,
             validator: (value) {
               if(value!.isEmpty || value == null){

                if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(value)) {
                  return 'Please enter a valid email';
                }
            
                
               }
             },
            decoration: InputDecoration(
                  
                  // labelText: 'Username',labelStyle: TextStyle(color: const Color.fromARGB(255, 43, 46, 49,),fontWeight: FontWeight.bold,), 
                  hintText: 'Enter your Email',
                  prefixIcon: const Icon(Icons.person), 
                   border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                   
               
                ),)
              )
              ),
          ),
Visibility(
  visible: isvisible,
  child: Container(
    
              width: 350,
              decoration: BoxDecoration(
      color: Colors.grey[200], 
      borderRadius: BorderRadius.circular(15),
    ),
    child:
             Center(child: TextFormField(controller: code,
             validator: (value) {
               if(value!.isEmpty){
                return'enter  code';
  
                
               }
             },
            decoration: InputDecoration(
        
       
        hintText: 'Enter Code',
        prefixIcon: const Icon(Icons.lock), 
         border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
         
     
      ),)
    )
    ),
),


 const SizedBox(height: 18),
         Visibility(
           visible: !isvisible,
           child: ElevatedButton(onPressed: (){
            if(email !=null){
            if(formkey.currentState!.validate()){
  
           setState(() {
            

               isvisible = !isvisible;
              });
           
            }}
           
           
           },style: ButtonStyle(
             backgroundColor:MaterialStateProperty.all<Color>(const Color.fromARGB(255, 25, 188, 57)),
             foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 249, 248, 248)),
             padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                   const EdgeInsets.symmetric(horizontal: 70, vertical: 5), 
            
             ),
           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                   RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9), 
                   ),)
           
             ),  child:  const Text("send code",style: TextStyle(fontSize:18 ),)),
         ),

  Visibility(
    visible: isvisible,
    child: ElevatedButton(onPressed: (){
if(formkey.currentState!.validate()){}

    },style: ButtonStyle(
    backgroundColor:MaterialStateProperty.all<Color>(const Color.fromARGB(255, 25, 188, 57)),
    foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 249, 248, 248)),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 70, vertical: 5), 
     
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9), 
          ),)), child: const Text("Confirm",style: TextStyle(fontSize:18 ),)),
  )

    ]
  )))
    );
  }
}