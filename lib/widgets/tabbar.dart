import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
          //App Bar
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                // Tab(text: "Chats",),
                // Tab(text: "Status",),
                // Tab(text: "Calls",),
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.settings),),
                Tab(icon: Icon(Icons.share),),
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.settings),),
                Tab(icon: Icon(Icons.share),),
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.settings),),
                Tab(icon: Icon(Icons.share),),
              ],
              // indicatorColor: Colors.yellow,
              indicatorSize: TabBarIndicatorSize.tab,
              // indicatorWeight: 5,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.greenAccent
              ),
              isScrollable: true,
            ),

            title: Text("Tab Bar"),
            centerTitle: true,
      
            //BG Color
            backgroundColor: Colors.green,
      
            //Leading
            leading: Icon(Icons.home),
      
            //Actions
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            ],
      
            //Shape
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
            
            //Elevation
            //elevation: 100,
      
          ),
      
          body: TabBarView(children: [
            Center(child: Text("Chats Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Status Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Calls Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Chats Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Status Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Calls Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Chats Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Status Page", style: TextStyle(fontSize: 30),)),
            Center(child: Text("Calls Page", style: TextStyle(fontSize: 30),)),

          ])
        ),
    );
  }
}