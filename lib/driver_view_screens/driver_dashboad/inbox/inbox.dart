import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';

import '../../../appassets/appassets.dart';
class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(title: 'Inbox', backicon: const Icon(null), backgroundColor: Colors.white, textstyle:Colors.black,),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.myBackgroundColor,
        child:  Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.NewsScreen);
              },
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                width: double.infinity,
                height: 45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1,
                      offset: Offset(0, 1), // Shadow position
                    ),
                  ],
                ),
                child:  const Row(
                  children: [
                    Icon(Icons.notifications,size: 20,color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("News",style: TextStyle(color: Colors.grey),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.CompaignScreen);
              },
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                width: double.infinity,
                height: 45,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1,
                      offset: Offset(0, 1), // Shadow position
                    ),
                  ],
                ),
                child:  const Row(
                  children: [
                    Icon(Icons.account_tree,size: 20,color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Compaign",style: TextStyle(color: Colors.grey),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
