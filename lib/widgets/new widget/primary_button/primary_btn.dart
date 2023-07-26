import 'package:flutter/material.dart';

import '../../../appassets/appassets.dart';
class PrimaryButton extends StatelessWidget {
  // double height;

  String buttonText;
  var buttonMargin;
  var buttonPadding;
  Color buttonColor;
  TextStyle buttonTextStyle;
  // Color shadowColor;
  // BorderRadius buttonRadius;
  Function onPress;
  final loading;
  PrimaryButton({Key? key,required this.buttonTextStyle, this.loading=false,required this.buttonText,this.buttonMargin,this.buttonPadding,required this.onPress,required this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width*0.9,
        margin: buttonMargin,
        padding: buttonPadding,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius:BorderRadius.circular(20),
        ),
        child: Center(child: loading?const CircularProgressIndicator(color: Colors.white,)
            :Text(buttonText,style: buttonTextStyle,maxLines: 1,overflow: TextOverflow.ellipsis,)),
      ),
      onTap: (){
        onPress();
      },
    );
  }
}
