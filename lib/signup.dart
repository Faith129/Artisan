import 'package:flutter/material.dart';
import 'package:first/location.dart';
import 'package:first/chatting2.dart';





class SignUpStart extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new signup(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class signup extends StatefulWidget{
  
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  List<DropdownMenuItem<int>>  listDrop = [];

  //void loadData(){

    //listDrop.add(new DropdownMenuItem(child: new Text('come'), value: 1, ));
  //  listDrop.add(new DropdownMenuItem(child: new Text('go'), value: 2, ));
   // listDrop.add(new DropdownMenuItem(child: new Text('pat'), value: 3, ));
    //listDrop.add(new DropdownMenuItem(child: new Text('rit'), value: 4, ));
   // listDrop.add(new DropdownMenuItem(child: new Text('fat'), value: 5, ));
    //listDrop.add(new DropdownMenuItem(child: new Text('big'), value: 6, ));
    //listDrop.add(new DropdownMenuItem(child: new Text('dog'), value: 7, ));

  
  
  
 // }
  @override

  Widget build(BuildContext context){
   // loadData();
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
                
                padding: const EdgeInsets.all(30.0),
                              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

               
                  new MaterialButton(
                    
                  minWidth: 200.0,
                  height: 40.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  
                  ),
                 
                  color: Color(0xff5577ba), 
                 
                  child: new Text("Continue with Facebook", style: TextStyle(
                  fontSize: 13.0, color: Colors.white,  
      
      ),
      ),
                  
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  splashColor: Colors.white,
                  
                  ),

                  new MaterialButton(
                    
                  minWidth: 200.0,
                  height: 40.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  
                  ),
                 
                  color: Color(0xffe74133),
                  child: new Text("Continue with Google", style: TextStyle(
                  fontSize: 13.0, color: Colors.white
      
      ),
      ),
                  
                  onPressed: (){},
                  splashColor: Colors.white,
                  
                  ),

 Padding(
           padding: const EdgeInsets.only(top:40.0),
            child: Text(
            "OR ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff935252),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      
                    ),




                     new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Email Address",


                  ),
                  keyboardType: TextInputType.text,
                ),
                
                
                
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Phone Number",),
                  keyboardType: TextInputType.number,
                ),

                            

                 new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Choose Username",),
                  keyboardType: TextInputType.text,
                ),

                  new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Choose Password",

                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),

                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Confirm Password",

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
                  child: new Text("Sign Up", style: TextStyle(
                  fontSize: 18.0, color: Colors.white
      
      ),),
                  
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => dropDown()));
                  },
                  splashColor: Colors.white,
                  
                  ),
                  
                   

                    
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
 } }