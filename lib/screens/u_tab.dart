import 'package:flutter/material.dart';
import 'dart:ui';
//import 's_register.dart';
import 'u_login.dart';
import 'package:busline1/screens/search.dart';
import 'package:busline1/screens/account.dart';
import 'package:busline1/screens/more.dart';
class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
    appBar: AppBar(title: Text('BUSLINE', style: TextStyle(
                                  
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                 ),
          ),
           actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyLoginPage()),
            );
              },
            ),
          ],
          backgroundColor: Colors.green,
          
          ),
          bottomNavigationBar: new Material(
        color: Colors.green,
        child: new TabBar(
       
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.search),
            text: 'Search',),
            
             new Tab(icon: new Icon(Icons.person),
             text: 'Account',),
           
            new Tab(icon: new Icon(Icons.more),
            text: 'More',),
         
          ]
        )
        
      ),
      body: new TabBarView(
       
        children: <Widget>[
          new MySearchPage(),
          new MyAccountPage(),
          new MyMorePage(),
        ]
      )
    ),
      ),
    );
  }
}