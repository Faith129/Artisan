import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked “final”.

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool checkBoxValue = false;
 bool checkBoxValue1 = false;

 //  bool _isChecked = false;
 // String _currText = ”;

 //List<String> text = [“PHP”, “JAVA”, “FLUTTER”];

  var currentSelectedValue;

  int _counter = 0;
  int selectedRadioTile;
      @override
      void initState() {
        super.initState();
        
        selectedRadioTile = 0;
      }
      
      setSelectedRadioTile(int val) {
        setState(() {
          selectedRadioTile = val;
        });
      }
      
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
          
    return Scaffold(
       
       // to set background color to the body
       backgroundColor: Color.fromARGB(216,197,197, 1),

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
                 
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.center,  
        
         
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke “debug painting” (press “p” in the console, choose the
          // “Toggle Debug Paint” action from the Flutter Inspector in Android
          // Studio, or the “Toggle Debug Paint” command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          children: <Widget>[
         
                Align(alignment: Alignment.center,),
              
   Padding(
            padding: const  EdgeInsets.only(right: 50, left: 50),),
   
      /* ============================== text-field  ===================================================*/

            Container(
    
              padding: EdgeInsets.all(20.0),
               child: Text(
                        "Custom Form",
                        style: TextStyle(fontSize: 30)
                      ),
               
            ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  margin: const EdgeInsets.only(right: 50, left: 50),
                  width: 400.0,
               child:  TextFormField(
              
                 decoration: new InputDecoration(                    
                                     
                        labelText: "Enter First Name",
                         icon: new Icon(Icons.person),
                        fillColor: Colors.white,
                         
                        
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),

                      validator: (val) {
                        if(val.length==0) {
                          return "Please enter name";
                        }else{
                          return null;
                        }
                      },
              
            )

              ),
           
           Container(
               padding: EdgeInsets.all(20.0),
                width: 400.0,
                 margin: const EdgeInsets.only(right: 50, left: 50),
             child: TextFormField(
               
                 decoration: new InputDecoration(
                        labelText: "Enter Phone Number",
                         icon: new Icon(Icons.phone),
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),

                      validator: (val) {
                        if(val.length==0) {
                          return "Please enter name";
                        }else{
                          return null;
                        }
                      },
              
            ),

           ),

/* ====================================== text area ==================================================*/
                      Container(
                      padding: EdgeInsets.all(20.0),
                                      width: 400.0,
                                      margin: const EdgeInsets.only(right: 50, left: 50),
                      child:TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                                            labelText: "Enter Addresss",
                                              icon: new Icon(Icons.home),
                                              fillColor: Colors.white,
                                              border: new OutlineInputBorder(
                                                borderRadius: new BorderRadius.circular(25.0),
                                                borderSide: new BorderSide(
                                                ),
                                              ),

                      ),

                      ),
                      ),
            
  /*======================================= Radion buttons ===================================*/  

            Container(
                alignment: Alignment.topLeft,
                 padding: EdgeInsets.all(20.0),
                width: 400.0,
                 margin: const EdgeInsets.only(right: 50, left: 50),
                child: Text(
                        "Gender",
                        style: TextStyle(fontSize: 20)
                      ),

            ),
            Container(
               
              width: 400.0,
                margin: const EdgeInsets.only(right: 50, left: 100),

              child:  RadioListTile(

                    value: 1,
                    groupValue: selectedRadioTile,
                  
                    title: Text("Female"),
                    onChanged: (val) {
                      print('Radio Tile pressed $val');
                      setSelectedRadioTile(val);
                    },
                    activeColor: Colors.blue,
                    
                   
                    selected: true,
                  ),

            ),
           
           Container(
              
              width: 400.0,
                margin: const EdgeInsets.only(right: 50, left: 100),
             child: RadioListTile(
                    
                    value: 2,
                    groupValue: selectedRadioTile,
                   
                    title: Text("Male"),
                    onChanged: (val) {
                      print('Radio Tile pressed $val');
                      setSelectedRadioTile(val);
                    },
                    activeColor: Colors.blue,
                   
                    selected: false,
                  ),

           ),

/* =============================================dropdown list ===============================================*/

      
/* ================================== Checkbox ==============================================*/
                Container(
                alignment: Alignment.topLeft,
                 padding: EdgeInsets.all(20.0),
                width: 400.0,
                 margin: const EdgeInsets.only(right: 50, left: 50),
                child: Text(
                        "Languages",
                        style: TextStyle(fontSize: 20)
                      ),

                ),
            Container(
                width: 300.0,
                margin: const EdgeInsets.only(right: 50,left:80),          

                        child: Row(
                        children: <Widget>[
                          Checkbox(
                              value: checkBoxValue,
                              onChanged: (bool value){
                                print(value);
                                setState(() {
                                  checkBoxValue = value;
                                });
                              }


                          ),
                          Text("FLUTTER")
                        ],

                        ),

                                    ),

                          Container(
                                        width: 300.0,
                                        margin: const EdgeInsets.only(right: 50,left:80),

                        child: Row(
                        children: <Widget>[
                          Checkbox(
                              value: checkBoxValue1,
                              onChanged: (bool value){
                                print(value);
                                setState(() {
                                  checkBoxValue1 = value;
                                });
                              }


                          ),
                          Text("PHP")
                        ],


                        ),

                                    ),

/* =================================== submit button ==============================================*/
             RaisedButton(
               
                      onPressed: () {},
                  shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 25, 
                                          color: Colors.blue,
                 
                        )
                      ),
                    ),

/*=================================end widget part ================================================== */    
 
          ],

        ),
    
    ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}