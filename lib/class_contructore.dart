import 'dart:math';

import 'package:flutter/material.dart';

class MyClassContructor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Triangle triangle = Triangle(10, 20);
    num hypo = triangle.hypo();
//    print("Hypo ${hypo.toStringAsFixed(2)}");

    //***************************************//

    Student student = Student();
    student.id = 1; // setter + getter = write + read
    int id = student.id;
    print("id: $id");
    student._name = "MengLeang";  // setter = write only
    String name = student._name;
    print("name: $name");
//    student.address = "Phnom Penh"; // getter = read only
    String add = student.address;
    print("address: $add");
     
    return Scaffold(
      appBar: AppBar(
        title: Text("Class and Constructor"),
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}

class Triangle{
  num a, b;

  Triangle(this.a, this.b); // constructor shortcut

  num hypo() => sqrt(pow(a, 2) + pow(b, 2));

}

//***************************************//

class Student{
  int id;
  String _name;

  set name(String n){
    this._name = n;
  }

  String get address{
    return "Kandal Province";
  }
}
