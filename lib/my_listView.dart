import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar,
      body: _buildBody,
      endDrawer: _buildDrawer,
      bottomNavigationBar: _buildBottom,
    );
  }

  get _buildAppBar{
    return AppBar(
      title: Text('ListView Example'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){
            print("settings clicked");
          },
        ),
      ],
    );
  }

  get _buildBody{
    return Container(
      color: Colors.black54,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          _buildListItem(
            Icon(Icons.face),
            "Face",
            "My face"
          ),
          _buildListItem(
              Icon(Icons.favorite),
              "Heart",
              "My heart"
          ),
          _buildListItem(
              Icon(Icons.settings),
              "Setting",
              "My setting"
          ),
          _buildListItem(
              Icon(Icons.settings),
              "Setting",
              "My setting"
          ),
          _buildListItem(
              Icon(Icons.settings),
              "Setting",
              "My setting"
          ),
          _buildListItem(
              Icon(Icons.settings),
              "Setting",
              "My setting"
          ),
          _buildListItem(
              Icon(Icons.settings),
              "Setting",
              "My setting"
          ),
          _buildListItem(
              Icon(Icons.settings),
              "Setting",
              "My setting"
          ),

        ],
      ),
    );
  }

  _buildListItem(Widget icon, String title, String subtitle){
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: icon,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }

  get _buildDrawer{

  }

  get _buildBottom{
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: (){
              print("home clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: (){
              print("person clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print("menu clicked");
            },
          ),
        ],
      ),
    );
  }
}
