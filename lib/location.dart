import "package:flutter/material.dart";

class dropDown extends StatefulWidget {
  @override
  _dropDownState createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
  String dropdownValue = "Select Location";
  String dropdownSpecialization ='Select Category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artisan App"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

 body: Stack(
   fit: StackFit.expand,
  children: <Widget>[
new Image(image: new AssetImage("assets/bg.png"),
fit: BoxFit.cover,  
),
       ListView( padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>[
        


 Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 10.0),
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                   Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.6),
                   // elevation: 0.0,
                    child:  Padding(
                      padding: const EdgeInsets.only(right:80.0),
                      
                      child: DropdownButton<String>(
        value: dropdownSpecialization,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        // style: TextStyle(
        //  // color: Colors.deepPurple
        // ),
        
        onChanged: (String newValue) {
          setState(() {
            dropdownSpecialization = newValue;
          });
        },

        
        items: <String>['Select Category', 'fashion design','plumbing','painting','carpentry','automotive','hairdressing','barbing','aluminum works','leather works','catering','electrical','barbing','aluminum works','leather works']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          })
          .toList(),
      ),
    ),
  ),




                  ]
                  )
   )
        ]
       )]
      )
        );
  }
}
