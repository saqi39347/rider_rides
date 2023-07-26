import 'package:flutter/material.dart';
import 'package:rides_driver_app/appassets/appassets.dart';

import '../../../widgets/new widget/custom_appbar.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: CustomAppBar(title: 'News', backicon: const Icon(null), backgroundColor: Colors.white, textstyle:Colors.black,),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.myBackgroundColor,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No News Yet")
          ],
        ),
      ),
    );
  }
}
