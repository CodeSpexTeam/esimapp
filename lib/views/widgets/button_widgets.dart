import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants/text_style.dart';

class RRoundedButton extends StatelessWidget {

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  RRoundedButton({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.orange,
    this.textStyle,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){callback!();},
      style:ElevatedButton.styleFrom(
          backgroundColor: bgColor,

      ),
      child: Text(btnName, style: textStyle,)

    );
  }
}


class RNextButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RNextButton({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.orange,
    this.textStyle,
    this.callback});

  @override
  Widget build(BuildContext context) {
      return SizedBox(
          width:250,
          height:60,
          child: ElevatedButton(onPressed: (){callback!(); },
          style:ElevatedButton.styleFrom(
          backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )


        ),
         child: Text(btnName, style: RTextStyle.nextButtonText,)),
      );
  }


}
