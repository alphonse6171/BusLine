

import 'package:flutter/material.dart';
import 'dart:ui';
//import 'u_register.dart';
//import 'package:busline1/screens/s_login.dart';
//import 'package:busline1/screens/u_tab.dart';
//import 's_register.dart';
//import 'package:firebase_database/firebase_database.dart';
class MyUpdatePage extends StatefulWidget {
  final String title;


  MyUpdatePage({Key key, this.title}) : super(key: key);

  @override
  _MyUpdatePageState createState() => _MyUpdatePageState();
}

class _MyUpdatePageState extends State<MyUpdatePage> {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: Stack(
   
      children: <Widget>[
        
        new Container(
          
        decoration:BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage('assets/images/bus.jpg'),
            fit: BoxFit.cover,
            
          ),
          
        ), 
      
       child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY:5.0),
         
          child: Container(

             decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            
             ),
          ),
       ),
        ),
        
        
 ListView(
           children: <Widget>[   
           
         
        new Center(
          child: Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/f.png'),
          ),
        ),
             
      new Center(
      
        child: Container(
           padding: const EdgeInsets.all(40.0),
                 child: new Form(
             child:new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              
              inputDecorationTheme: new InputDecorationTheme(
              
                 hintStyle: new TextStyle(color: Colors.white24, fontSize: 15.0),
                labelStyle:
                    new TextStyle(color: Colors.blue, fontSize: 17.0),
              )),
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Passengers:',
                        hintText: 'Enter no of passengers'
                    ),
                    keyboardType:TextInputType.text,
                    
                  ),
                  
                   new Padding(
                           padding: EdgeInsets.symmetric(vertical: 25.0),
      
                      ),
                      new MaterialButton(
                        padding: EdgeInsets.all(15.0),
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.green,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text('Update'),
                        onPressed: () {
                         
               
                          
                        },
                        
                      ),
                ],
              ),
             ),
                 ),
        ),
      ),
           ],
 ),
      ],
      ),
             );
  }

}


