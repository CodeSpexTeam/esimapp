import 'package:flutter/material.dart';

import '../../constants/text_style.dart';
import '../widgets/button_widgets.dart';


class AuthPasswordScreen extends StatelessWidget {
  const AuthPasswordScreen({super.key});

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
            const Text("Choose a", style: RTextStyle.title1,),
            const Text("password", style: RTextStyle.title1,),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 290,
              child: Builder(
                  builder: (context) {
                    return const Text("Create a secure password linked to your account", style: RTextStyle.subTitle1, );
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
