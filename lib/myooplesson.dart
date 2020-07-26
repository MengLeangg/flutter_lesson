import 'package:flutter/material.dart';

class MyOOPLesson extends StatelessWidget {

  void showProfile(String name, [int age, String gender]){
    print("Hello $name");
    print("You're $age");
    print("You're $gender");
  }

  @override
  Widget build(BuildContext context) {

    // Call method or function
    Hello h = Hello();
    int h_sum = h.sum(100, 90);
    print(h_sum);

    print(total(99, 1));

    showProfile("Mengleang", 20, "Male");


    return Scaffold(
      appBar: AppBar(title: Text("Dart OOP Lesson"),),
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}

class Hello{
  int sum(int a,int b){
    return a+b;
  }
}

// function, because it's outside of other classes
int total(int a, int b){
  return a+b;
}

void hello(String text) => print(text);