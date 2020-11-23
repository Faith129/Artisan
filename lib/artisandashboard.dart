import 'package:flutter/material.dart';
import 'package:first/customerdashboard.dart';


class signup extends StatefulWidget{
  
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  List<DropdownMenuItem<int>>  listDrop = [];

 
  @override

  Widget build(BuildContext context){
   // loadData();
    return new Scaffold(
       appBar: AppBar(
      title: Text('Hello Peter'),
      centerTitle: true,
      backgroundColor: Color(0xff935252),
          ),
          
      backgroundColor: Colors.white,
      body: ListView(
        children:<Widget>[
          Stack(
        children: <Widget>[
          new Column(
          children: <Widget>[
           
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

               
                     new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Your Listing Name",


                  ),
                  keyboardType: TextInputType.text,
                ),
                
                
                
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Briefly describe your business",),
                  keyboardType: TextInputType.number,
                ),

                            

                 new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Listing Category",),
                  keyboardType: TextInputType.text,
                ),

                  new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Listing Price",

                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),

                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Description & Hours",

                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),

                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Hours of operation",

                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),


                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Location",

                  ),
                  
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),

                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Phone Number",

                  ),
                  
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),


                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Email address",

                  ),
                  
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),




                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Upload Image Sample of Workdone",

                  ),
                  
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),

                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Upload Video Sample of Workdone",

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
                  child: new Text("Save", style: TextStyle(
                  fontSize: 18.0, color: Colors.white
      
      ),),
                  
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => customerdashboard()));
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