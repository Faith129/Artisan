import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:first/login.dart';
import 'package:first/signup.dart';
import 'package:first/customerdashboard.dart';
class splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
      title: Text('ARTISAN APP'),
      centerTitle: true,
      backgroundColor: Color(0xff935252),
          ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
         

           Padding(
           padding: const EdgeInsets.all(100.0),
            child: Text(
            "Choose who you are",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff935252),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      
                    ),
                   Padding(
           padding: const EdgeInsets.only(top:350.0),
            child: Text(
            "Not yet an Artisan? ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff935252),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:400.0),
                      child:

                        new GestureDetector(
                          
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                          },
                          child: Text(
                            "Join Now", textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xff3575d3), fontSize: 18, fontWeight: FontWeight.bold), 
                          ),
                        ),
                    ),
                    
                      Column(
                        children: <Widget>[
                          Padding(
            padding: const EdgeInsets.only(top: 200),
            
            child: Material(
             
             elevation: 0.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    
                    width: 110,
                    height: 70,
                    
                    
                    child:
                    MaterialButton(
                          color: Color(0xff691717).withOpacity(0.9),
                          shape: 
                          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(150))),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => customerdashboard()));
                          //  Navigator.of(context).pushNamed("/RegPage");
                          },
                          minWidth: 50,
                          child: 
                          Text(
                            "CUSTOMER",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                    ),
                  ),
                  Container(
                   width: 110,
                    height: 70,
                  
                 child: MaterialButton(
                    color: Color(0xff691717).withOpacity(0.9),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(120))),
                   
                    onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                    },
                    minWidth: 50,
                    child: Text(
                          "ARTISANS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    
                  ),
                  

                  ),],
                ),
            ),
          ),
                        ],
                      ),
         
           
            ] 
    )
    );
      
  }
}