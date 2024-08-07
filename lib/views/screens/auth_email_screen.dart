import 'package:esimapp/constants/text_style.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widgets.dart';

class AuthEmailScreen extends StatelessWidget {
  const AuthEmailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),

      body: Container(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("What's your", style: RTextStyle.title1,),
            const Text("email", style: RTextStyle.title1,),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: Builder(
                  builder: (context) {
                  return const Text("Let's create an account with your ", style: RTextStyle.subTitle1, );
                }
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            const TextField(


            ),
            const SizedBox(
              height: 50,
            ),

            Center(
              child: RNextButton(callback: () {
              print("Text");
              },btnName: "Next"),
                  //ElevatedButton(onPressed: (){}, child: const Text("Next", style: RTextStyle.title1,))),
            ),

            ],
        ),
      ),

    );
  }
}
