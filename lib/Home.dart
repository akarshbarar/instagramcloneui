import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context,index){
          if(index==0){
              return Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircleAvatar(child: Image.network("https://gravatar.com/avatar/9679b2727f868c6b299a5e6b18390c28?s=400&d=robohash&r=x"),radius: 30.0,));
                  }
                  ),
              );
          }
          else{
          return tabs(context);

          }
        }
        
      ),
    );
  }
}

Widget tabs(context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 360.0,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: CircleAvatar(
              child: CircleAvatar(child: Image.network("https://robohash.org/9679b2727f868c6b299a5e6b18390c28?set=set4&bgset=&size=400x400")),
            ),
            title: Text("USER NAME ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            actions: [
              IconButton(icon: Icon(Icons.more_vert,color: Colors.black,), onPressed: (){})
            ],
          ),
          Divider(),
          Image.network("https://miro.medium.com/max/700/1*TkNd1PwwwdBi9Z3kdG5Hng.png"),
          Row(
            children: [
                IconButton(icon: Icon(Icons.thumb_up_alt_outlined,color: Colors.black,), onPressed: null),
                IconButton(icon: Icon(Icons.comment_bank_outlined,color: Colors.black,), onPressed: null),
                IconButton(icon: Icon(Icons.share_sharp,color: Colors.black,), onPressed: null),
            ],
          ),
          Text("500 Like",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          Text("theusename: DESCRIPTION.........."),
          Divider()
        ],
      ),
    ),
  );
}