import 'package:flutter/material.dart';

void main() {
  runApp( MyApp ());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Sign Up And Sign In PAge',style: TextStyle(color: Colors.black),),

       ),
       body: MyAppState(),
     ),

   );

  }

}

class MyAppState extends StatefulWidget{
  @override
  State<MyAppState> createState() => _MyFormState();

}

class _MyFormState extends State<MyAppState> {

  final formkey = GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {

   return Form(
     key: formkey,
     child: Column(
       children: [
         Padding(
           padding: EdgeInsets.all(10),
           child: TextFormField(
             decoration: InputDecoration(
               labelText: 'Enter User Name',
             ),
             validator:(value){
               if(value== null || value.isEmpty){
                 return 'Enter Value';
               }
               return null;
             } ,

           ),


         ),
         Padding(
           padding: EdgeInsets.all(10),
           child: TextFormField(
             decoration: InputDecoration(
               labelText: 'Enter Lastname',
             ),
             validator: (value){
               if(value== null || value.isEmpty){
                 return 'Enter Value';
               }
               return null;
             },
           ),

         ),




         ElevatedButton(
             onPressed: (){
               if(formkey.currentState!.validate()){
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Prossing Data')));
               }
             },
             child: Text('sign up',style: TextStyle(color: Colors.red),)),

         Padding(
           padding: EdgeInsets.all(10),
           child: TextFormField(
             decoration: InputDecoration(
               hintText: "Enter Email",
             ),
             validator: (value){
               if(value==null || value.isEmpty){
                 return 'Enter Value';
               }
               return null;
             },
           ),
         ),
         Padding(
           padding: EdgeInsets.all(10),
           child: TextField(
             decoration: InputDecoration(
               hintText: 'Enter  Possword',
             ),
           ),
         ),



         ElevatedButton(onPressed: (){
           if(formkey.currentState!.validate()){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Valid Data')));
           }
         },
             child: Text('Sign In',style: TextStyle(color: Colors.yellow),))

       ],

     ),

   );

  }

}






