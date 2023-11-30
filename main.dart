import 'dart:math';

import 'package:assignment1/wallpaper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(wallpaper());
}

class assignmetnt extends StatefulWidget {
  const assignmetnt({super.key});

  @override
  State<assignmetnt> createState() => _assignmetntState();
}

class _assignmetntState extends State<assignmetnt> {
  int number = 1;
  String? message="Odd";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment"),
          leading: Icon(Icons.assignment),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number=Random.secure().nextInt(100) ;
              number=number==0? 1:number;
              if(number%2 ==0){
                   message="Even";
              }
              else{
                message="Odd";
              }
            });
          },
          child: Text("Play"),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape:box(message!)!,
            ),
            alignment: Alignment.center,
            child: Text("Your Number is $number and $message",
            textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }
}

BoxShape? box(String message){
  if(message == "Odd"){
    return BoxShape.circle;
  }
  else
  {
    return BoxShape.rectangle;
  }
}
