import 'package:flutter/material.dart';

import '../../../widgets/new widget/custom_appbar.dart';
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Navigation', backicon: const Icon(Icons.arrow_back_ios,color: Colors.grey,),
        backgroundColor: Colors.white, textstyle: Colors.black,),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.white,
            child:    const Padding(
              padding: EdgeInsets.only(left: 15,top: 15,right: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Default navigation",),
                      Text("Navigation auto-start",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,)
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.white,
            child:    const Padding(
              padding: EdgeInsets.only(left: 15,top: 15,right: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Default navigation",),
                      Text("Navigation auto-start",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.toggle_on,color: Colors.grey,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
