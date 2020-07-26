import 'package:flutter/material.dart';

class MyInheritance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Dart OOP Inheritance"),),
      body: Container(
      color: Colors.black,
      ),
    );
  }
}


class Point{
  int x, y;
  void setPoint() => print("setPoint $x, $y");
}

class Rectangle extends Point{
  double width, height;

  void draw() {
    super.x = 10;
    super.y = 20;
    super.setPoint();
  }
}

class RoundRectangle extends Rectangle{
  void show(){
    super.x = 15;
    super.y = 10;
    super.setPoint();
    super.width = 100;
    super.height = 50;
    super.draw();
  }
}

void test(){
  RoundRectangle rr = RoundRectangle();
  rr.x = 10;
  rr.y = 15;
  rr.width = 19.22;
  rr.height = 9.21;
  rr.setPoint();
  rr.draw();
  rr.show();
}