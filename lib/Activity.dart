import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context,index){
          return actity();
        }
        
      ),
    );
  }
}

Widget actity(){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CircleAvatar(
        child: Image.network("https://gravatar.com/avatar/9679b2727f868c6b299a5e6b18390c28?s=400&d=robohash&r=x"),
      ),
      Text("XYZ has requested"),
      MaterialButton(
        onPressed: (){},
        child: Text("Confirm",style: TextStyle(color: Colors.white),),
        color: Colors.blue,
      ),
      FlatButton(onPressed: (){}, child: Text("Delete"))
    ],
    );
}