import 'package:flutter/material.dart';
import 'package:rides_driver_app/appassets/appassets.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';
class RidesDetail extends StatefulWidget {
  const RidesDetail({Key? key}) : super(key: key);

  @override
  State<RidesDetail> createState() => _RidesDetailState();
}

class _RidesDetailState extends State<RidesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '19 jul, 04:03', backicon: const Icon(null), backgroundColor: Colors.white, textstyle:Colors.black,),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Image.asset(AppAssets.recIcon,color: Colors.green,width: 20,height: 20,),
                const SizedBox(width: 10,),
                const Text("Beirut, Lebanon"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image.asset(AppAssets.crossIcon,width: 15,height: 15,),
                const SizedBox(width: 10,),
                const Text("Passenger, Cancelled",style: TextStyle(color: Colors.red),),
              ],
            ),
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: Image.asset(AppAssets.ride_ended),

          ),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: const Row(
              children: [
                Text("Get Help with ride",),
                Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
