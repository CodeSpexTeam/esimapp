import 'package:esimapp/constants/text_style.dart';
import 'package:flutter/material.dart';

class RegionalScreen extends StatelessWidget {
  const RegionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Regional", style: RTextStyle.title1,),

      ),

      body: Container(
        width: 400,

        margin: EdgeInsets.only(left: 10, top: 10, right: 10),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 280, // Fixed width for each card
              margin: const EdgeInsets.all(8.0),
              child: Card(
                color : Colors.greenAccent,
                child: Text("hello"),
              ),
            );
          },
        ),

      ),

    );
  }
}