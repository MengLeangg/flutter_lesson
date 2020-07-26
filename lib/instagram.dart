import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        backgroundColor: Colors.white,
        leading: Icon(
            Icons.camera_alt,
            color: Colors.black
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.chat_bubble_outline), color: Colors.black, onPressed: () {}),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network(
              'https://logos-world.net/wp-content/uploads/2020/04/Instagram-Logo.png',
              height: 50,
            ),
          ],
        ),
      ),
      body: Container(

      ),
    );
  }
}
