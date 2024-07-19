import 'package:esimapp/constants/text_style.dart';
import 'package:flutter/material.dart';

class PlansScreen extends StatelessWidget {
   PlansScreen({super.key});

   final List<Map<String, dynamic>> cards1 = [
     {
       'destinationsName':'Europe',
       'pack':32,
       'validDays':7,
       'price':40.2,
       'currencyType': 'dollar'
     },
     {
       'destinationsName':'Europe',
       'pack':32,
       'validDays':45,
       'price':17,
       'currencyType': 'dollar'
     },
     {
       'destinationsName':'Europe',
       'pack':32,
       'validDays':30,
       'price':160,
       'currencyType': 'dollar'
     },
     {
       'destinationsName':'Europe',
       'pack':32,
       'validDays':60,
       'price':320,
       'currencyType': 'dollar'
     },

   ];

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
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Plans", style: RTextStyle.title1,),

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
              child: Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.ac_unit_rounded),
                            Text("Europe")
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("1 GB", style: RTextStyle.title1,),
                        Text("VALID FOR 30 DAYS")
                      ],

                    )),
                    Container(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.network_cell_rounded),
                            Text(" View All"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(onPressed: (){}, child: Row(
                          children: [
                            Icon(Icons.monetization_on_outlined),
                            Text("10.0 "),
                            Text("BUY NOW")


                          ],
                        ))
                      ],

                    )),

                  ],
                ),
              ),
            ),
          );
        },
      ),

      ),
    );
  }
}

