import 'package:flutter/material.dart';

class UiStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Kit'),),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.place),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.network('http://bit.ly/2IGluzb'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: (){},),
            IconButton(icon: Icon(Icons.menu), onPressed: (){},),
          ],
        ),
      ),
    );
  }
}
