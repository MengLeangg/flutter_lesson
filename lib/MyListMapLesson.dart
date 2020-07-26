import 'package:flutter/material.dart';

class MyListMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // List

    List list = List();
    list.add(5);
    list.add("Hello");
    list.add(true);
    list.add(9.99);
    list.add(Scaffold);
    print(list);

    List list2 = [10, Scaffold, 90.11, false, Text('World')];
    print(list2);

    for(int i = 0 ; i < list2.length ; i++){
      if (list2[i] is int){
        print("double : ${list2[i]}");
      }
    }

    for(dynamic data in list2){
      print("for Each: $data");
    }

    list2.forEach((element) => print("element: $element"));

    List<String> fruits = ['banana', 'pear', 'cherry', 'melon', 'Apple', 'avocado'];
    print("original fruits: $fruits");

    fruits.insert(2, 'strawberry');
    print("after insert strawberry index at 2: $fruits");

    fruits = fruits.reversed.toList();
    print("after reversed: $fruits");

    fruits.sort((a, b) => a.compareTo(b));
    print("after sorted: $fruits");

    fruits.sort((a, b) => b.compareTo(a));
    print("after sorted Z-A: $fruits");

    List<String> fruitWithA = fruits.where((element) => element.toLowerCase().startsWith("A".toLowerCase())).toList();
    print("fruitWithA: $fruitWithA");

    List<String> fruitsContainningA = fruits.where((element) => element.toLowerCase().contains("A".toLowerCase())).toList();
    print("fruitsContainningA: $fruitsContainningA");
    print("index of fruit.indexOf('Apple'): ${fruits.indexOf("Apple")}");

    //  Map
    Map map1 = Map();
    map1["id"] = 1;
    map1[true] = Container();
    map1[1] = true;

    Map map2 = {
      'id' : 1,
      true: Container(),
      1: false
    };

    Map<String, dynamic> jsonString = {
      'id' : 1,
      'name' : "Leang",
      'score' : 90.5,
      'passed' : true
    };
    print('jsonString["id"]: ${jsonString["id"]}');
    print('jsonString["name"]: ${jsonString["name"]}');

    List<Map<String, dynamic>> mapList = [
      { "id" : 1, "name": "Leang", "score" : 95.22, "passed" : true },
      { "id" : 1, "name": "Sotheana", "score" : 90.99, "passed" : true },
    ];
    mapList.forEach(( Map<String, dynamic> element ) => print("mapList element: ${element['score']}"));

    return Scaffold(
      appBar: AppBar(
        title: Text('List and Map'),
      ),
      body: Container(
        color: Colors.pinkAccent,
      ),
    );
  }
}
