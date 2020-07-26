import 'package:flutter/material.dart';
import 'package:tutorial_day1/my_listViewBuilder.dart';

class MyDetailPage extends StatefulWidget {

  Movie movie;
  MyDetailPage({this.movie});

  @override
  _MyDetailPageState createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  get _buildAppBar{
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(widget.movie.title),
      leading: IconButton(icon: Icon(Icons.keyboard_arrow_left), onPressed: (){
        Navigator.of(context).pop();
      },),
    );
  }

  get _buildBody{
    return Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              padding: EdgeInsets.all(15),
              child: Image.network(widget.movie.img, fit: BoxFit.cover,),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("${widget.movie.subtitle}"),
            ),
          ],
        ),
      ),
    );
  }
}
