import 'package:flutter/material.dart';
import 'dart:async';
import 'package:first/splash.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState(){
  //   super.initState();
  //   Timer(Duration(seconds: 5),() {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  // }



  // }
  
  _SplashScreenState(){
   
  Timer _timer;
    _timer = Timer(
        const Duration(milliseconds:5000),
        () {Navigator.push(context, MaterialPageRoute(
            builder: (context) => splash()));});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
       body: Stack(
         fit: StackFit.expand,
         children: <Widget>[
           Container(
             decoration: BoxDecoration(color: Colors.white),
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
             Expanded(
               flex: 2,
               child: Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     CircleAvatar(
                       backgroundColor: Colors.white,
                       radius: 50.0,
                      child:  Image.asset("assets/logo.png", height: 260.0 ,
              width: 200.0 )
                       ),
                       Padding(padding: EdgeInsets.only(top: 10.0),
                       ),
                       Text(
                         "Connect with reliable artisans", style: TextStyle(color: Color(0xff691717), fontSize: 18.0, fontWeight: FontWeight.bold),
                       )

                   ],
                 ),
               ),
             ),
             Expanded(
               flex: 1,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   
                   CircularProgressIndicator(),
                   Padding(padding: EdgeInsets.only(top:20.0),
                   ),
                   Text("Request for our service  with a Click", style: TextStyle(color: Color(0xff691717), fontSize: 12, fontWeight: FontWeight.bold),)
                 ],
               ),)
           ],)
         ],
       )
      //Center(
      //   child: Column(
      //     children:<Widget>[        
      //       Image.asset('assets/makeup.jpeg'),
      //       Text('WELCOME TO ARTISAN APP', style: TextStyle(fontSize: 15, color: Colors.lightGreen),),]

      //   )
        
        
      // ),
    );
  }
}