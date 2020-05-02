import 'package:flutter/material.dart';
//import 'package:busline/screens/more.dart';
//import 'u_register.dart';
//import 'package:busline/screens/s_login.dart';
//import 'package:busline/screens/tab.dart';
//import 's_register.dart';
import 'package:busline1/screens/alarm.dart';
import 'dart:ui';
class SMorePage extends StatefulWidget {
  final String title;

  SMorePage({Key key, this.title}) : super(key: key);

  @override
  _SMorePageState createState() => _SMorePageState();
}

class _SMorePageState extends State<SMorePage> {
 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white38,
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
                SizedBox(height: 20,),
                Center(
              
                  child: Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 100,
                  width:350 ,
                  
                  child:  FlatButton(
             
                   
                   child: Row(
                  children: <Widget>[
                    SizedBox(width:120),
                        
                    new Text('Bus Contact   '),
                     new Icon(Icons.directions_bus)
                    
                  ]
                   ),
                    
                     onPressed:(
                       
                     ) {},
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                  ),
                 
                ),
                 SizedBox(height: 20,),
                  Center(
              
                  child: Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 100,
                  width:350 ,
                  
                  child:  FlatButton(
             
                   
                   child: Row(
                  children: <Widget>[
                    SizedBox(width:120),
                        
                    new Text('Contact   '),
                     new Icon(Icons.phone)
                    
                  ]
                   ),
                    
                     onPressed:() {},
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                  ),
                 
                ),
                  SizedBox(height: 20,),
                Center(
              
                  child: Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 100,
                  width:350 ,
                  
                  child:  FlatButton(
             
                   
                   child: Row(
                  children: <Widget>[
                    SizedBox(width:100),
                        
                    new Text('Wake Up Alaram   '),
                     new Icon(Icons.directions_bus,)
                    
                  ]
                   ),
                    
                     onPressed:() {
                       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlarmPage()),
            );

                     },
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                  ),
                 
                ),
                 SizedBox(height: 20,),
                Center(
              
                  child: Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 100,
                  width:350 ,
                  
                  child:  FlatButton(
             
                   
                   child: Row(
                  children: <Widget>[
                    SizedBox(width:100),
                        
                    new Text('Transactions   '),
                     new Icon(Icons.format_list_bulleted)
                    
                  ]
                   ),
                    
                     onPressed:() {},
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                  ),
                 
                ),
                 SizedBox(height: 20,),
                Center(
              
                  child: Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 100,
                  width:350 ,
                  
                  child:  FlatButton(
             
                   
                   child: Row(
                  children: <Widget>[
                    SizedBox(width:110),
                        
                    new Text('About us  '),
                     new Icon(Icons.format_quote)
                    
                  ]
                   ),
                    
                     onPressed:() {},
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                  ),
                 
                ),
                 SizedBox(height: 20,),
                Center(
              
                  child: Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 100,
                  width:350 ,
                  
                  child:  FlatButton(
             
                   
                   child: Row(
                  children: <Widget>[
                    SizedBox(width:100),
                        
                    new Text('My Bookings   '),
                     new Icon(Icons.directions_bus,)
                    
                  ]
                   ),
                    
                     onPressed:() {},
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                  ),
                 
                ),
                 SizedBox(height: 20,),
                Center(
              
                  child: Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 100,
                  width:350 ,
                  
                  child:  FlatButton(
             
                   
                   child: Row(
                  children: <Widget>[
                    SizedBox(width:120),
                        
                    new Text('Rate Us   '),
                     new Icon(Icons.star)
                    
                  ]
                   ),
                    
                     onPressed:() {},
                  splashColor: Colors.green,
                  color: Colors.white,
                ),
                  ),
                 
                ),
              ],
          
        ),
      ]
        ),
    );
  }
}