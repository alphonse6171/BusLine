import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:busline1/screens/update.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  LatLng _initialPosition = LatLng(9.7131, -76.6833);
  GoogleMapController _controller;
  Location _location = Location();
  

  void _onMapCreated(GoogleMapController _cntrl){
    _controller = _cntrl;
    _location.onLocationChanged().listen((l){
    _controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(l.latitude, l.longitude),
          zoom: 15,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
       
        children: <Widget>[
          Container(
            height: 450,
        child:  GoogleMap(
            initialCameraPosition: 
                 CameraPosition(target: _initialPosition, zoom:50),
            mapType: MapType.terrain,
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
           ),
          ),
          ListView(children: <Widget>[
           SizedBox(
                 height: 450,
               ),
               Center(
               child: Text(
                  'RT600',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'),
                ),
               ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                  SizedBox(width: 10,),
                  Text(
                  'Arrival Time      : ',
                  
                  style: TextStyle(
                    
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 10),
                 Text(
                  '17:00',
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
                  'Expected Arrival Time     :',
                  
                  style: TextStyle(
                    
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 10),
                 Text(
                  '17:15 ',
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
                  'Delayed by     :',
                  
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 10),
                 Text(
                  '15 Minutes  ',
                  style: TextStyle(
                     color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'),
                ),
                ],),
                const SizedBox(height: 30),
                Row(children: <Widget>[
                  SizedBox(width: 110,),
        RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyUpdatePage()),
            );
          },
          textColor: Colors.white,
          
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Update',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
                ],
                ),
          ],
          )
             ],
      ),
      );
   
        
  }
}