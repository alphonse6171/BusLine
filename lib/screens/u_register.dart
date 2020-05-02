import 'package:flutter/material.dart';
import 'dart:ui';
import 's_register.dart';
import 'package:busline1/screens/u_tab.dart';
//import 'u_register.dart';
enum SingingCharacter { lafayette, jefferson }

class MyRegisterPage extends StatefulWidget {
  @override
  _MyRegisterPageState createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  int group=1;
  //SingingCharacter _character = SingingCharacter.lafayette;
  @override
    Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(title: Text('REGISTER', style: TextStyle(
                                  
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
              Container(
         child: FlatButton(
        
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SRegisterPage()),
            );
          },
        padding: EdgeInsets.only(left: 200.0),
        
        child: Text(
         
          'Staff Registration',
           
          style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.underline),
          
        ),
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
                    new TextStyle(color: Colors.blue, fontSize: 15.0),
              )),
            
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Username:',
                        hintText: 'Less than 10 characters'
                    ),
                    keyboardType:TextInputType.text,
                    
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email:',
                        hintText: 'Enter your email',
                       
                    ),
                  keyboardType: TextInputType.text,
                 
                  ),
                   TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password:',
                        hintText: 'Less than 15 characters'
                    ),
                    keyboardType:TextInputType.text,
                     obscureText: true,
                    
                  ),
                   TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Re-type password :',
                       // hintText: 'Enter email'
                    ),
                    keyboardType:TextInputType.text,
                     obscureText: true,
                  ),
                   TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Date of birth:',
                        hintText: 'dd/mm/yyyy'
                    ),
                    keyboardType:TextInputType.text,
                    
                  ),
                  new Container(
                          alignment: Alignment(-1.0, 0.0),
                          padding: EdgeInsets.only(top: 30.0, right: 0.0),
                          child: InkWell(
                            child: Text(
                              'Gender :',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  ),
                            ),
                          ),
                        ),
            new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                       new Container(
                          alignment: Alignment(-1.0, 0.0),
                          padding: EdgeInsets.only(top: 0.0, right: 0.0),
                          child: InkWell(
                            child: Text(
                              'Male ',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  ),
                            ),
                          ),
                        ),
                        new Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (T){
                            setState(() {
                              group=T;
                            });
                          },
                        ),
                        new Container(
                          alignment: Alignment(-1.0, 0.0),
                          padding: EdgeInsets.only(top: 0.0, right: 0.0),
                          child: InkWell(
                            child: Text(
                              'Female ',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  ),
                            ),
                          ),
                        ),
                         new Radio(
                          value: 2,
                          groupValue: 1,
                          onChanged: (T){
                            setState(() {
                              group=T;
                            });
                          },
                        ),

                        
                        
                        
                      ],
                    ),
                    TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Phone:',
                        hintText: 'only numbers'
                    ),
                    keyboardType:TextInputType.text,
                    
                  ),
             
                 new Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 150.0,
                        color: Colors.green,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text('Register'),
                        onPressed: () {
                          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );

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


