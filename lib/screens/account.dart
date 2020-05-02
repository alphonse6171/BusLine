
import 'package:flutter/material.dart';
import 'dart:ui';
//import 'u_register.dart';
//import 'package:busline/screens/s_login.dart';
//import 'package:busline/screens/tab.dart';
//import 's_register.dart';
class MyAccountPage extends StatefulWidget {
  final String title;

  MyAccountPage({Key key, this.title}) : super(key: key);

  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.black.withOpacity(0.8)),
          clipper: GetClipper(),
        ),
        Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                       image: DecorationImage(
                            image: AssetImage('assets/images/me.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ],
                        ),
                        ),
                       SizedBox(height: 10.0),
                Text(
                  'Alphonse',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                  SizedBox(width: 10,),
                  Text(
                  'Name      : ',
                  
                  style: TextStyle(
                    
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 10),
                 Text(
                  'Thomas Alphonse Benny',
                  style: TextStyle(
                     color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'),
                ),
                ],
                ),
                 SizedBox(
                  height: 20,
                ),
                Row(children: <Widget>[
                  SizedBox(width: 10,),
                  Text(
                  'e-mail     : ',
                  
                  style: TextStyle(
                    
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 10),
                 Text(
                  'alphonse6171@gmail.com',
                  style: TextStyle(
                     color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'),
                ),
                ],),
                 SizedBox(
                  height: 20,
                ),
                Row(children: <Widget>[
                  SizedBox(width: 10,),
                  Text(
                  'Phone     :  ',
                  
                  style: TextStyle(
                    
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 10),
                 Text(
                  '9446576171',
                  style: TextStyle(
                     color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'),
                ),
                ],)
               
                ],
            ),
            )
      ],
    ));
  }
}
class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return true;
  }
}
