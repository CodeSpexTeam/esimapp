import 'package:esimapp/views/screens/local_screeen.dart';
import 'package:esimapp/views/screens/profile_screen.dart';
import 'package:esimapp/views/screens/regional_screen.dart';
import 'package:esimapp/views/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/text_style.dart';
import 'global_screen.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> cards = [
    {
      'myColor': Colors.yellowAccent,
      'text':"card 1",
      'icon':const Icon(Icons.ice_skating)
    },
    {
      'myColor': Colors.green,
      'text':"card 2",
      'icon':const Icon(Icons.email)
    },
    {
      'myColor': Colors.redAccent,
      'text':"card 3",
      'icon':const Icon(Icons.shop)
    },


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title:  Container(
          child: const Text(
              'Explore', style:RTextStyle.title1
          ),
        ),

      ),
        bottomNavigationBar: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 50,
                child: IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                }, icon: Icon(Icons.home, size: 36,)),
              ),
              Container(
                width: 100,
                height: 50,
                child: IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WalletScreen(),));
                }, icon: Icon(Icons.wallet, size: 36)),
              ),
              Container(
                width: 100,
                height: 50,
                child: IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                }, icon: Icon(Icons.account_circle, size: 36,)),
              ),

            ],
          ),
        ),

      body: SingleChildScrollView(
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200, // Fixed height for the card list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {

                return Container(
                  width: 300, // Fixed width for each card
                  margin: const EdgeInsets.all(8.0),
                  child: Card(
                    color : cards[index]['myColor'],
                    child: Center(
                      child: Row(
                          children: [
                            Container(
                              width: 170,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Invite"),
                                  Text("friend"),
                                  Text("to earn 3"),

                                ],
                              ),
                            ),
                            Container(
                              child: cards[index]['icon'],
                            )
                          ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            width: 400,
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LocalScreeen()));
                  }, child: Text("Local" , style: RTextStyle.subTitle1,)),
                ),
                Container(

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> RegionalScreen()));
                  }, child: Text("Regional",style: RTextStyle.subTitle1,)),
                ),
                Container(

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=> GlobalScreen()));
                  }, child: Text("Global",style: RTextStyle.subTitle1,)),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child:Text('Popular Destinations',
              style:RTextStyle.title1)),
          Container(
    height: 300, // Fixed height for the card list
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (context, index) {

    return Container(
    width: 300, // Fixed width for each card
    margin: const EdgeInsets.all(8.0),
    child: Card(
    color : cards[index]['myColor'],
    child: Center(
    child: Row(
    children: [
    Container(
    width: 170, child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Invite"),
    Text("friend"),
    Text("to earn 3"),

    ],
    ),
    ),
    Container(
    child: cards[index]['icon'],
    )
    ],
    ),
    ),
    ),
    );
    },
    ),
    ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child:Text('Europe',
              style:RTextStyle.title1)),
          Container(
            height: 150,
           // Fixed height for the card list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {

                return Container(
                  width: 150, // Fixed width for each card
                  margin: const EdgeInsets.all(8.0),
                  child: Card(
                    color : cards[index]['myColor'],
                    child: Center(
                      child: Row(
                        children: [
                          Container(

                          ),


                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child:Text('Asia',
              style:RTextStyle.title1)),
          Container(
            height: 150,
            // Fixed height for the card list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {

                return Container(
                  width: 150, // Fixed width for each card
                  margin: const EdgeInsets.all(8.0),
                  child: Card(
                    color : cards[index]['myColor'],
                    child: Center(
                      child: Row(
                        children: [
                          Container(

                          ),


                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child:Text('Americas',
              style:RTextStyle.title1)),
          Container(
            height: 150,
            // Fixed height for the card list
            child:  Container(
              height: 150,
              // Fixed height for the card list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {

                  return Container(
                    width: 150, // Fixed width for each card
                    margin: const EdgeInsets.all(8.0),
                    child: Card(
                      color : cards[index]['myColor'],
                      child: Center(
                        child: Row(
                          children: [
                            Container(

                            ),


                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),


    ));


  }
}
