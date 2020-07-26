import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
          backgroundColor: Colors.pink,
          title: Text("Netflix")
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black87,
        child: Container(
          width: 300,
          height: 400,
          color: Colors.red,
//          alignment: Alignment.center,
          child: Image.network('https://image.tmdb.org/t/p/w500/8WUVHemHFH2ZIP6NWkwlHWsyrEL.jpg', fit: BoxFit.cover,),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: (){print("");},),
            IconButton(icon: Icon(Icons.people), onPressed: (){print("");},),
            IconButton(icon: Icon(Icons.play_arrow), onPressed: (){print("");},),
            IconButton(icon: Icon(Icons.favorite), onPressed: (){print("");},),
            IconButton(icon: Icon(Icons.menu), onPressed: (){print("");},),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.pinkAccent,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Image.network('https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png', fit: BoxFit.contain,),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Icon(Icons.navigate_next),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Product'),
                trailing: Icon(Icons.navigate_next),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.add_location),
                title: Text('Location'),
                trailing: Icon(Icons.navigate_next),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}