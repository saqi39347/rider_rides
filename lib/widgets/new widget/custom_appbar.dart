import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  Icon backicon;
  Color textstyle;
  CustomAppBar({required this.title,required this.backicon,required this.backgroundColor,required this.textstyle});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: backicon),
            ),
            Expanded(child: Center(child: Text(title,style: TextStyle(color: textstyle,fontWeight: FontWeight.bold),))),
          ],
        ),
      ),
    );
  }
}
