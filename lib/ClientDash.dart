import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(home: ClientDash()),
    );

class ClientDash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Connect with Artisans'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: new Container(
        child: ListView(
          children: <Widget>[
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
            ),
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
          ],
        ),
      ),
    );
  }
}
