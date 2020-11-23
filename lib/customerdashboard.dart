import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(home: customerdashboard()),
    );

class customerdashboard extends StatefulWidget {
  @override
  _customerdashboardState createState() => _customerdashboardState();
}

class _customerdashboardState extends State<customerdashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Category", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                Text("View All", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0))
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(children: <Widget>[
                    new Icon(Icons.photo_camera, size: 50, color: Colors.deepPurpleAccent),
                    new Text('Plumbing'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.person_pin, size: 50, color: Colors.redAccent),
                    new Text('Beauty'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.home, size: 50, color: Colors.orange),
                    new Text('painting'),
                  ]),
                ],
              ),
            ) ,
            
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(children: <Widget>[
                    new Icon(Icons.laptop_windows, size: 50, color: Colors.black),
                    new Text('IT Services'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.hotel, size: 50, color: Colors.lightBlue),
                    new Text('Tiling'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.wifi_tethering, size: 50, color: Colors.lime),
                    new Text('Electrical \n Services'),
                  ]),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(children: <Widget>[
                    new Icon(Icons.add_shopping_cart, size: 50, color: Colors.green),
                    new Text('Carpentry '),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.assignment_ind, size: 50, color: Colors.pinkAccent),
                    new Text('Welding'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.apps, size: 50, color: Colors.lime),
                    new Text('Fabrication'),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(children: <Widget>[
                    new Icon(Icons.laptop_windows, size: 50, color: Colors.red),
                    new Text('Aluminum \n Works '),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.hotel, size: 50, color: Colors.lightBlue),
                    new Text('Leather work'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.wifi_tethering, size: 50, color: Colors.lime),
                    new Text('Catering  \n Services'),
                  ]),
                ],
              ),
            ),

           Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(children: <Widget>[
                    new Icon(Icons.photo_camera, size: 50, color: Colors.green),
                    new Text('Artworks'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.person_pin, size: 50, color: Colors.redAccent),
                    new Text('Automotive \n Services'),
                  ]),
                  Column(children: <Widget>[
                    new Icon(Icons.home, size: 50, color: Colors.orange),
                    new Text('painting'),
                  ]),
                ],
              ),
            ),

            
             ]
        )
        );
         
        
  }
  _gridItem(icon){
    return Column(children: <Widget>[
      CircleAvatar(
        child: Icon(icon, size: 16.0, color: Colors.white),
        backgroundColor: Colors.deepOrange.withOpacity(0.9),
      ),
      SizedBox(height: 10.0), Text("Birthday",  style: TextStyle(fontSize: 11.0))
    ],);
  }
  _top(){
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.only(
           bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)
        )

      ),
      child: Column(
        children: <Widget>[
         
          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
              hintText: "What are you looking for?", fillColor: Colors.white, filled: true,
              suffixIcon: Icon(Icons.filter_list), enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              contentPadding:  
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), 
            ),
          )
        ],
      ),
    );
  }
}