import 'package:esimapp/constants/text_style.dart';
import 'package:esimapp/views/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: RTextStyle.title1,
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
        child: Container(
          width: 400,
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: RTextStyle.title2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.account_circle, color: Colors.red,
                    size: 70,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ReepuTest",
                        style: RTextStyle.subTitle1,
                      ),
                      Text("reepushah@gmail.com", style: RTextStyle.subTitle2, )
                    ],
                  ),
                  Container(
                      width: 100,
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios)))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Settings",
                      style: RTextStyle.title2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.message_rounded, color: Colors.blueAccent,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Live chat",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.monetization_on,color: Colors.green,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Refer & Earn",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.language, color: Colors.red,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Languages",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.thumb_up_alt_rounded,color: Colors.pinkAccent,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Share App",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.question_mark_rounded,color: Colors.orange,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Help",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.lock_outline_rounded, color: Colors.indigo,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Privacy",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.warning_rounded, color: Colors.greenAccent,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Terms",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.logout_rounded, color: Colors.redAccent,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Sign out",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Icon(
                            Icons.delete, color: Colors.red,
                            size: 50,
                          )),
                          Container(
                              width: 200,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Delete Account",
                                style: RTextStyle.title3,
                              )),
                          Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
