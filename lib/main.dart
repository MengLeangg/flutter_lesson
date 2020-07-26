import 'package:flutter/material.dart';
import 'my_listViewBuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListViewBuilder(),
    );

    List<int> nums = [1,2,3,4,5,6,7,8,9];
    nums.add(10);

//    for(int n in nums){
//      print("n: $n");
//    }

//    for(int i = 0 ; i < nums.length ; i++){
//      print("numbers: ${nums[i]}");
//    }

//  nums.forEach((element) {
//      print("element: $element");
//  });
  }
}


