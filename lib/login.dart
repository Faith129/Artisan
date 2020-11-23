import 'dart:ui' as prefix0;

import 'package:first/artisandashboard.dart';
import 'package:flutter/material.dart';
import 'package:first/profile.dart';





class login extends StatefulWidget{
  
  @override
  State createState() => new loginState();
}

class loginState extends State<login> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  Animation<double> _iconAnimation;
  @override
  void initState(){
    super.initState();
    _animationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 400)
    );
    _iconAnimation = new CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=> this.setState((){}));
    _animationController.forward();
  }
  @override

  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children:<Widget>[
          Stack(
        children: <Widget>[
          new Column(
          children: <Widget>[
            Image.asset("assets/logo.png", height: 260.0 ,
              width: 200.0 ),
            new Form(
              child: new Theme(
                data: new ThemeData(
                  brightness: Brightness.light, primarySwatch: Colors.grey, 
                  inputDecorationTheme: new InputDecorationTheme(
                    labelStyle: new TextStyle(
                      color: Colors.grey, fontSize: 14.0
                    )
                  )
                ),
              child: Container(
                
                padding: const EdgeInsets.all(40.0),
                              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                     new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Email",


                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                  new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Password",

                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 40),
                  
                ),
                new MaterialButton(
                  
                  minWidth: 300.0,
                  height: 40.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  
                  ),
                
                  color: Color(0xff691717),
                  child: new Text("LOGIN", style: TextStyle(
                  fontSize: 18.0, color: Colors.white
      
      ),),
                  
                  onPressed: ()=>{
                    Navigator.push(
    context, MaterialPageRoute(builder: (context) =>signup()))},
                  splashColor: Colors.white,
                  
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text("Don't have an account? Click to Signup",
                      textAlign: TextAlign.center, style: TextStyle(color: Colors.red[900], fontSize: 10.0),),
                    )
                  )
                    
                  ],
                ),
              ),
            )
            )
          ],
          
          )
        ],
      ),
        ]),
    );
  }
}