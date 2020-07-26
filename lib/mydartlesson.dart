import 'package:flutter/material.dart';

class MyDartLesson extends StatelessWidget {
  bool dark = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dark ? Colors.black : Colors.pink,
        title: Text("Flutter"),
      ),
      body: dark ? Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey[900], Colors.black]
          ),
        ),
        child: Image.network('https://www.mauvais-genres.com/27765/joker-original-movie-poster-15x20-in-2019-joaquin-phoenix.jpg'),
      ) : Container(
        alignment: Alignment.center,
        child: Image.network('https://www.mauvais-genres.com/27765/joker-original-movie-poster-15x20-in-2019-joaquin-phoenix.jpg'),
      ),
    );
  }
}
