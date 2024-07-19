import 'package:flutter/material.dart';

class PlansScreen extends StatelessWidget {
   PlansScreen({super.key});

   var colors = [
     {'color': Colors.green,},
     {'color': Colors.redAccent,},
     {'color': Colors.blueAccent,},
     // {'color': Colors.white70,},
     // {'color': Colors.greenAccent,},
     // {'color': Colors.lightGreenAccent,},

   ];

   var count = 0;

  final List<Map<String, dynamic>> cards = [
    {
      'color': Colors.green,
    }

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Plans"),
        backgroundColor: Colors.white,
      ),

      body: Container(
        width: 400,

        margin: EdgeInsets.only(left: 10, top: 10, right: 10),
        child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {

          if(colors.length-1==count){
            count= 0;
          }else{
            print(index);
            count=count+1;
          }

          return Container(
            height: 160, // Fixed width for each card
            margin: const EdgeInsets.all(8.0),
            child: Card(
              color : colors[count]['color'],
              child: Text("hello"),
            ),
          );
        },
      ),

      ),
    );
  }
}

