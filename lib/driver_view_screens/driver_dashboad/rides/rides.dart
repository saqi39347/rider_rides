import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';

import '../../../appassets/appassets.dart';
class Rides extends StatefulWidget {
  const Rides({Key? key}) : super(key: key);

  @override
  State<Rides> createState() => _RidesState();
}

class _RidesState extends State<Rides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Rides', backicon: const Icon(null), backgroundColor: Colors.white, textstyle:Colors.black,),
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.myBackgroundColor,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.RidesDetail);
                },
                child: Container(
                  height: 85,
                  color: Colors.white,
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("19 jul,04:03",style: TextStyle(color: Colors.grey),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Beirut,Lebanon",style: TextStyle(color: Colors.black)),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,),
                          ],
                        ),
                        Text("Passenger cancelled",style: TextStyle(color: Colors.red),),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
