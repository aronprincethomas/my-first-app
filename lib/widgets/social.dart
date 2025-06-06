import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App Bar
        appBar: AppBar(
          title: Text("Learn Flutter"),
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

        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Sachin Tendulkar"),
                      subtitle: Text("23 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/sachin.jpeg')
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text("Cute puppy......"),
                    ),
                    Image.asset('images/dogs.jpeg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("MS Dhoni"),
                      subtitle: Text("33 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/dhoni.jpeg')
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text("Cute Cats......"),
                    ),
                    Image.asset('images/cats.jpg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Virat Kholi"),
                      subtitle: Text("45 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/virat.jpg')
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text("Finaly......"),
                    ),
                    Image.asset('images/win.webp'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_down))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      );
  }
}