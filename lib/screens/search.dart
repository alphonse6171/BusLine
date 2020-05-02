import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:busline1/screens/result.dart';
class MySearchPage extends StatefulWidget {

 
  @override
  MySearchPageState createState() => MySearchPageState();
}
 

 
class MySearchPageState extends State<MySearchPage> {
  //
   var _value = "1";
    var _v = "1";

  DropdownButton _fromDown() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "Kottayam",
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Pala",
            ),
          ),
          DropdownMenuItem<String>(
            value: "3",
            child: Text(
              "Thodupuzha",
            ),
          ),
          DropdownMenuItem<String>(
            value: "4",
            child: Text(
              "Kattapana",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
      );

  DropdownButton _toDown() => DropdownButton<String>(
        items: [
         DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "   Kottayam",
            ),
          ),
         DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "   Thodupuzha",
            ),
          ),
          DropdownMenuItem<String>(
            value: "3",
            child: Text(
              "   Ernakulam",
            ),
          ),
          DropdownMenuItem<String>(
            value: "4",
            child: Text(
              "   Kattappana",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _v = value;
          });
        },
        value: _v,
        isExpanded: true,
      );

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
             
     child:   new Container(
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
              Row(
                 children: <Widget>[
                   new SizedBox(
                     width: 50,
                   ),
                   new Text('From : ', style: TextStyle(
                     color: Colors.blue,
                                fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),),
                 new SizedBox(
                     width: 15,
                   ),  
                     new Container(
                   decoration: BoxDecoration(
                      color: Colors.yellow,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 50,
                  width:175 ,
                                
               child:Center(
                child: _fromDown()
                     ),
                     ),
                 ]
              ),
              new SizedBox(
                height: 30,
              ),
                Row(
                 children: <Widget>[
                   new SizedBox(
                     width: 50,
                   ),
                   new Text('To      : ', style: TextStyle(
                     color: Colors.blue,
                                fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                ),),
                 new SizedBox(
                     width: 15,
                   ),  
                     new Container(
                   decoration: BoxDecoration(
                      color: Colors.yellow,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                   
                  height: 50,
                  width:175 ,
                                
               child:Center(
                child: _toDown()
                     ),
                     ),
                 ]
              ),
              new SizedBox(
                     height: 50,
                   ),   
                   new Container(    
                     decoration: BoxDecoration(
                      color: Colors.white,
                      
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 15.0, color: Colors.black54)
                        ],
                   ),
                      
               child: MaterialButton(
                 
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
              MaterialPageRoute(builder: (context) => MyResultPage()),
            );
                    },
                        
                      ),
                   ),
               
              ],
            ),
          ),
      ),
      ),
       ),
        ),
      ]
       ),
      ),
    );
  }
}