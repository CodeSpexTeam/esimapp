import 'package:flutter/material.dart';


import '../../constants/text_string.dart';
import '../../constants/text_style.dart';
import '../widgets/button_widgets.dart';

class AuthSplashScreen extends StatelessWidget {
  const AuthSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/background.png"),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                margin:const EdgeInsets.only(bottom: 50.0) ,
                child: Image.asset("assets/images/avatar.png"),

              ),
              const SizedBox(
                width: 400,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(RTextString.headingTitle1, style:RTextStyle.title1),
                  Text(RTextString.headingTitle2,style:RTextStyle.title1),
                  Text(RTextString.headingTitle3,style:RTextStyle.title1),

                ],
              ),

              Column(
                children: [
                  RRoundedButton(btnName: "Sign up with email",callback: (){
                    print("Test");
                  }, bgColor: const Color(0xfff9f7fa),),
                  const SizedBox(
                    height: 10,
                  ),
                  RRoundedButton(btnName: "Sign up with gmail",callback: (){
                    print("button2");
                  }, bgColor: Colors.black,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      Text(" Sign in"),

                    ],
                  )


                 
                ],
              )

            ],
          )




        ],
      ),
    );
  }
}
