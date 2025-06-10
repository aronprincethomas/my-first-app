import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  bool? isChecked = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;

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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.black,
                tristate: true,
                value: isChecked, 
                onChanged: (val){
                  setState(() {
                    isChecked = val;
                  });
                }
                ),

              Checkbox(
                activeColor: Colors.red,
                checkColor: Colors.black,
                value: isChecked2, 
                onChanged: (val){
                  setState(() {
                    isChecked2 = val;
                  });
                }
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckboxListTile(
                    title: Text(
                      "Send Notifications",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Turn  On or Off Notifications"),
                    tileColor: Colors.green,
                    value: isChecked3, 
                    onChanged: (val){
                    setState(() {
                      isChecked3 = val;
                    });
                  }
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckboxListTile(
                    shape : RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(30)
                    ),
                    title: Text(
                      "Send Notifications",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Turn  On or Off Notifications"),
                    tileColor: Colors.red,
                    value: isChecked4, 
                    onChanged: (val){
                    setState(() {
                      isChecked4 = val;
                    });
                  }
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    shape : RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(30)
                    ),
                    title: Text(
                      "Send Notifications",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Turn  On or Off Notifications"),
                    tileColor: Colors.amber,
                    value: isChecked5, 
                    onChanged: (val){
                    setState(() {
                      isChecked5 = val;
                    });
                  }
                  ),
                )

            ],
          ),
        )
      );
  }
}