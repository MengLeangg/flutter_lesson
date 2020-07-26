import 'package:flutter/material.dart';

class SetStateExample extends StatefulWidget {
  @override
  _SetStateExampleState createState() => _SetStateExampleState();
}

class _SetStateExampleState extends State<SetStateExample> {
  String _title = "Hello";
  bool _lightColor = true;
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
      bottomNavigationBar: _show ? _bottom : null,
    );
  }

  get _buildAppBar{
    return AppBar(
      backgroundColor: _lightColor ? Colors.pink : Colors.black,
      title: Text(_title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){
            setState(() {
              _title = "Good Morning";
            });
          },
        ),
        IconButton(
          icon: Icon(Icons.color_lens),
          onPressed: (){
            setState(() {
              _lightColor = ! _lightColor;
            });
          },
        ),
        IconButton(
          icon: Icon(_show ? Icons.visibility_off : Icons.visibility),
          onPressed: (){
            setState(() {
              _show = !_show;
            });
          },
        ),
      ],
    );
  }
  get _buildBody{
    return Container(
      color: _lightColor ? Colors.white : Colors.grey,
    );
  }

  get _bottom{
    return BottomAppBar(
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: (){
            },
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: (){
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
            },
          ),
        ],
      ),
    );
  }
}
