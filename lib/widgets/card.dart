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
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("CBI 5"),
                      subtitle: Text("Starring Mammootty"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Lucifer"),
                      subtitle: Text("Starring Mohanlal"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Kaduva"),
                      subtitle: Text("Starring Prithviraj"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {
                        
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("CBI 5"),
                      subtitle: Text("Starring Mammootty"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Lucifer"),
                      subtitle: Text("Starring Mohanlal"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Kaduva"),
                      subtitle: Text("Starring Prithviraj"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {
                        
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("CBI 5"),
                      subtitle: Text("Starring Mammootty"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Lucifer"),
                      subtitle: Text("Starring Mohanlal"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blueGrey,
                shadowColor: Colors.greenAccent,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Kaduva"),
                      subtitle: Text("Starring Prithviraj"),
                      textColor: Colors.white,
                      leading: Icon(Icons.movie),
                      iconColor: Colors.white,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {
                        
                      },
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