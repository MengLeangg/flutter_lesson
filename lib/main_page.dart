import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  double _heightOfScreen;
  double _widthOfScreen;
  final double _appBarHeight = 124;

  @override
  Widget build(BuildContext context) {

    _heightOfScreen = MediaQuery.of(context).size.height - _appBarHeight;
    _widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody2Items,
      bottomNavigationBar: bottom,
    );
  }

  get _buildBody2Items{
    return Container(
      color: Colors.deepOrange,
      child: Column(
        children: <Widget>[
          Container(
            width: _widthOfScreen,
            height: _heightOfScreen / 2,
            color: Colors.black26.withOpacity(0.9),
          ),
          Container(
            width: _widthOfScreen,
            height: _heightOfScreen / 2,
            color: Colors.white.withOpacity(.8),
          )
        ],
      ),
    );
  }

  get _buildAppBar{
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: (){},
      ),
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Text("Home"),
            SizedBox(width: 10,),
            Text("Order Food"),
            SizedBox(width: 10,),
            Text("Food Delivery"),
            SizedBox(width: 10,),
            Text("Food Panda"),
            SizedBox(width: 10,),
            Text("Logout"),
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.people), onPressed: (){},)
      ],
    );
  }

  get bottom{
    return BottomAppBar(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(icon: Icon(Icons.home, color: Colors.white,),onPressed: () => print("Home"),),
          IconButton(icon: Icon(Icons.person, color: Colors.white,),onPressed: () => print("Person"),),
          IconButton(icon: Icon(Icons.play_circle_filled, color: Colors.white,),onPressed: () => print("Play"),),
          IconButton(icon: Icon(Icons.group, color: Colors.white,),onPressed: () => print("Group"),),
          IconButton(icon: Icon(Icons.menu, color: Colors.white,),onPressed: () => print("menu"),),
          IconButton(icon: Icon(Icons.more_horiz, color: Colors.white,),onPressed: () => print("More"),),
        ],
      ),
    );
  }
  get _buildBody{
    return Container(
      alignment: Alignment.center,
      color: Colors.purple,
      child: Container(
        alignment: Alignment.center,
        height: 500,
        width: 300,
        color: Colors.black87,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 60, height: 60, color: Colors.pink,),
              Container(width: 70, height: 70, color: Colors.orange,),
              Container(width: 100, height: 100, color: Colors.yellow,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 60, height: 60, color: Colors.pink,),
              Container(width: 70, height: 70, color: Colors.orange,),
              Container(width: 100, height: 100, color: Colors.yellow,),
              Container(width: 100, height: 100, color: Colors.yellow,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 60, height: 60, color: Colors.pink,),
              Container(width: 70, height: 70, color: Colors.orange,),
              Container(width: 100, height: 100, color: Colors.yellow,),
            ],
          ),
        ),
      ),
    );
  }
}
