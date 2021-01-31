import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             CircleAvatar(
               child: Image.network("https://robohash.org/167214a824c484e7acdde4c4ce3b3cf7?set=set4&bgset=&size=400x400"),
                radius: 40.0,
             ),
             Column(
               children: [
                 Text("100",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                 Text("Post")
               ],
             ),
             Column(
               children: [
                 Text("100",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                 Text("Followers")
               ],
             ),
             Column(
               children: [
                 Text("100",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                 Text("Following")
               ],
             ), 
           ],
         ),
         Text("NAME",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
         Text("Description line 1",style: TextStyle(color: Colors.black,fontSize: 15,),),
         Text("Description line 2",style: TextStyle(color: Colors.black,fontSize: 15,),),
         RaisedButton(onPressed: (){},child: Text("EDIT PROFILE"),),
         Container(
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
              ),
          Expanded(child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Image.network("https://gravatar.com/avatar/9679b2727f868c6b299a5e6b18390c28?s=400&d=robohash&r=x"),
            );
          }),
        ))
         
        ],
      ),
    );
  }
}