import 'package:esimapp/views/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../constants/text_style.dart';
import 'home_screen.dart';


class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("My eSIMs",style: RTextStyle.title1,),

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

      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

                Center(child: Text("No eSIMs here? That's like a runway without plans. Time to clear for takeoff!", style: RTextStyle.subTitle1)),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, child: Text("Buy a plan")),

              ],
            ),
      ),


    );
  }
}
