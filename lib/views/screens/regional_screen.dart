import 'package:esimapp/constants/text_style.dart';
import 'package:esimapp/views/screens/plans_screen.dart';
import 'package:flutter/material.dart';

class RegionalScreen extends StatelessWidget {
   RegionalScreen({super.key});

  final List<Map<String, dynamic>> cards = [
    {
      'destinationsName':'Europe',
      'totalDestinations':32,
      'color': Colors.yellowAccent,
      'icon':const Icon(Icons.ice_skating)
    },
    {
      'destinationsName':'Middle East',
      'totalDestinations':19,
      'color': Colors.green,
      'icon':const Icon(Icons.email)
    },
    {
      'destinationsName':'Asia',
      'totalDestinations':19,
      'color': Colors.redAccent,
      'icon':const Icon(Icons.email)
    },

  ];


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
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return Container(
              height: 280, // Fixed width for each card
              margin: const EdgeInsets.all(8.0),
              child: Card(
                color : cards[index]['color'],
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PlansScreen()));
                },

                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0), // Remove shadow
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    alignment: Alignment.centerLeft,
                  ),

                  child: Container(
                  margin: EdgeInsets.only(bottom: 20, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cards[index]['destinationsName'], style: RTextStyle.title1,),
                      Text(cards[index]['totalDestinations'].toString() + " Destinations",style: RTextStyle.subTitle2,)
                    ],
                  ),),
                ),
              ),
            );
          },
        ),

      ),

    );
  }
}
