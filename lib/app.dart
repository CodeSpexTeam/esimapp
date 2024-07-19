import 'package:esimapp/constants/text_style.dart';
import 'package:esimapp/views/screens/auth_name_screen.dart';
import 'package:esimapp/views/screens/auth_password_screen.dart';
import 'package:esimapp/views/screens/home_screen.dart';
import 'package:esimapp/views/screens/login_password_screen.dart';
import 'package:esimapp/views/screens/plans_screen.dart';
import 'package:esimapp/views/screens/profile_screen.dart';
import 'package:esimapp/views/screens/wallet_screen.dart';
import 'package:flutter/material.dart';

import 'views/screens/auth_email_screen.dart';
import 'views/screens/auth_splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),


    );
  }
}