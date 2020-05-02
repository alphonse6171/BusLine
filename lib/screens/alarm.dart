import 'package:flutter/material.dart';
import 'dart:ui';
//import 'u_register.dart';
//import 'package:busline/screens/s_login.dart';
//import 'package:busline/screens/u_tab.dart';
//import 's_register.dart';
//import 'package:busline1/screens/alarm.dart';
class AlarmPage extends StatefulWidget {
  final String title;

  AlarmPage({Key key, this.title}) : super(key: key);

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {

  var _value = "1";
    

  DropdownButton _fromDown() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Row
            (children: <Widget>[

            
           
           new Icon(Icons.looks_one)
            ]
            )
          ),
          DropdownMenuItem<String>(
            value: "2",
           child: Row
            (children: <Widget>[

            
           
           new Icon(Icons.looks_two)
            ]
            )
          ),
          DropdownMenuItem<String>(
            value: "3",
           child: Row
            (children: <Widget>[

            
           
           new Icon(Icons.looks_3)
            ]
            )
          ),
          DropdownMenuItem<String>(
            value: "4",
            child: Row
            (children: <Widget>[

            
           
           new Icon(Icons.looks_4)
            ]
            )
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
      );

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('Wake Up Alarm', style: TextStyle(
                                  
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                 ),
          ),
          backgroundColor: Colors.green,
          ),
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
             SizedBox(height: 50,),
               new Center(
          child: Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/f.png'),
          ),
        ),
    
             Row(
                 children: <Widget>[
                   new SizedBox(
                     width: 50,
                   ),
                   
                   new Text('Destination : ', style: TextStyle(
                     color: Colors.blue,
                                fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),),
                 new SizedBox(
                     width: 15,
                   ),  
                     new Container(
                   decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],

                   ),
                   
                  height: 50,
                  width:100 ,
                                
               child:Center(
                child: _fromDown()
                     ),
                     ),
                 ]
              ),
              SizedBox(height: 40,),
              Row(children: <Widget>[
                SizedBox(width: 140,),
        new Padding(
                           padding: EdgeInsets.symmetric(vertical: 25.0),
      
                      ),
                      new MaterialButton(
                        padding: EdgeInsets.all(15.0),
                        height: 50.0,
                        minWidth: 10.0,
                        color: Colors.green,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text('Set Alarm'),
                        onPressed: () {
                          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlarmPage()),
            );

                        },
                        
                      ),
                    

           ]
                        ),
        
     
           ],
       ),
      ],
      )
    );
     
    
  }
}


