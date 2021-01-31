import 'package:flutter/material.dart';
import 'package:instagramclone/Activity.dart';
import 'package:instagramclone/Home.dart';
import 'package:instagramclone/Profile.dart';
import 'package:instagramclone/Search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: Instagram(),
      routes: {},
    );
  }
}

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int id=0;
  @override
  Widget build(BuildContext context) {

    final tab=<Widget>[
      Home(),
      Search(),
      Center(child: Text("Tab3"),),
      Activity(),
      Profile(),
    ];

    final bottomNAvigationBatItems=<BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("")),
      BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("")),
      BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),title: Text("")),
      BottomNavigationBarItem(icon: Icon(Icons.thumb_up),title: Text("")),
      BottomNavigationBarItem(icon: Icon(Icons.circle),title: Text("")),
    ];

    final bottomNavigationBar=BottomNavigationBar(
      items: bottomNAvigationBatItems,
      currentIndex: id,
      type: BottomNavigationBarType.fixed,
      onTap: (int value){
        setState(() {
          id=value;
        });
      },
    );
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(icon: Icon(Icons.add_box,color: Colors.black,),onPressed: (){},),
            title: Text("Instagram",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            centerTitle: true,
            actions: [
              IconButton(icon: Icon(Icons.message,color: Colors.black,), onPressed: (){})
            ],
          ),
          body: tab[id],
          bottomNavigationBar: bottomNavigationBar,
        ),
      ),
    );
  }
}