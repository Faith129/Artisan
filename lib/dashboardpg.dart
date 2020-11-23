import 'package:first/ClientDash.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(home: Dashboard()),
    );

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
      title: Text('ARTISAN APP'),
      
      centerTitle: true,
      backgroundColor: Color(0xff935252),
          ),
      
           body: GridView(
        padding: EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
       //for bigger screen size
        //MediaQuery.of(context).size.width >= 1100?3: 
       // MediaQuery.of(context).size.width>=600?2: 1,
        
        ),
        children: <Widget>[
          Card(
            color: Colors.lightGreen[300],
            child: Center(
            child: Text("Tile 1", 
            style:TextStyle(color: Colors.green[900],
            fontSize: 20.0,
            )
            ),
       ),
        ),
         Card(
            color: Colors.orangeAccent[200],
            child: Center(
            child: Text("Tile 1", 
            style:TextStyle(color: Colors.green[900],
            fontSize: 20.0,
            )
            ),
       ), ),
        Card(
            color: Colors.green[500],
            child: Center(
            child: Text("Tile 1", 
            style:TextStyle(color: Colors.green[900],
            fontSize: 20.0,
            )
            ),
       ), ),
        Card(
            color: Colors.amber[200],
            child: Center(
            child: Text("Tile 1", 
            style:TextStyle(color: Colors.green[900],
            fontSize: 20.0,
            )
            ),
       ), ),
        Card(
            color: Colors.brown[300],
            child: Center(
            child: Text("Tile 1", 
            style:TextStyle(color: Colors.green[900],
            fontSize: 20.0,
            )
            ),
       ), ),
        Card(
            color: Colors.yellowAccent[200],
            child: Center(
            child: Text("Tile 1", 
            style:TextStyle(color: Colors.green[900],
            fontSize: 20.0,
            )
            ),
       ), ),
        ],
      ),
      drawer:Drawer(
        child:ListView(
        children:<Widget>[
       
          UserAccountsDrawerHeader(
          decoration: BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.white, 
              Colors.white],)),
          currentAccountPicture: Image.asset("assets/logo3.png", height: 460.0 ,
              width: 400.0, ),
              accountName: Text("Artisan App", style: TextStyle(color: Colors.black, letterSpacing: 1.2, 
              fontSize: 15.0),
              ),
            accountEmail: 
            Text("artisan@gmail.com", style: TextStyle(color: Colors.black, letterSpacing: 1.2, 
              fontSize: 8.0),),
          ),
         
          Container(
            color: Color(0xff842929),
           
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.home, color: Colors.white),
                 
                  title: Text('Dashboard', style: TextStyle(color: Colors.white)
                  ),
                     onTap: () => Navigator.of(context).pushNamed("/login"),
                ),
                new Divider(
                    color: Colors.white,
                    height: 5.0,
                ),
                ListTile(
                  leading: new Icon(Icons.view_agenda, color: Colors.white),
            title: Text('View/Update Issue', style: TextStyle(color: Colors.white)),
          ),
          new Divider(
                    color: Colors.white,
                    height: 5.0,
                ),
          ListTile(
            leading: new Icon(Icons.book, color: Colors.white,),
            title: Text('Raise a New Issue', style: TextStyle(color: Colors.white),
               ),
               
          ),
          new Divider(
                    color: Colors.white,
                    height: 5.0,
                ),
          ListTile(
            leading: new Icon(Icons.chat, color: Colors.white),
            title: Text('Chat with Customer', style: TextStyle(color: Colors.white)),
          ),
          new Divider(
                    color: Colors.white,
                    height: 5.0,
                ),
          ListTile(
            leading: new Icon(Icons.person, color: Colors.white),
            title: Text('My Profile', style: TextStyle(color: Colors.white)),
          ),
          new Divider(
                    color: Colors.white,
                    height: 5.0,
                ),
          ListTile(
            leading: new Icon(Icons.settings_applications, color: Colors.white),
            title: Text('Settings', style: TextStyle(color: Colors.white)),
          ),
          new Divider(
                    color: Colors.white,
                    height: 5.0,
                ),
          ListTile(
            leading: new Icon(Icons.close, color: Colors.white),
            title: Text('Logout', style: TextStyle(color: Colors.white)),
          ),
              ],
            ),
          ),


        ], 
      ),),
      );
     }
}