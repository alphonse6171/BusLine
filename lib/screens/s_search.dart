import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:busline1/screens/s_profile.dart';
class SearchPage extends StatefulWidget {

 
  @override
  SearchPageState createState() => SearchPageState();
}
 

 
class SearchPageState extends State<SearchPage> {


  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        
       body:Stack(
   
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
             
     child: ListView(children: <Widget>[
       new Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             
              children: <Widget>[
                new Center(
          child: Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/f.png'),
          ),
        ),
              
              
                 
                   TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Bus ID',
                        
                       // hintText: 'Less than 10 characters'
                    ),
                    keyboardType:TextInputType.text,
                  ),
               MaterialButton(
                 
                        padding: EdgeInsets.all(15.0),
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.green,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text('Search'),
                        onPressed: () {
                           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
               
                        }
               )
                        
              ],
            ),
          ),
     ),
     ]
       ),
        ),
      )
       ),
      ]
      ),
            ),
    );
  }
}