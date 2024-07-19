import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 50,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 36,)),
            ),
            Container(
              width: 100,
              height: 50,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.wallet, size: 36)),
            ),
            Container(
              width: 100,
              height: 50,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.account_circle, size: 36,)),
            ),

          ],
        ),
      ),
    );
  }
}
