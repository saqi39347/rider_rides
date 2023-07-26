import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';
class VehicleScreen extends StatefulWidget {
  const VehicleScreen({Key? key}) : super(key: key);

  @override
  State<VehicleScreen> createState() => _VehicleScreenState();
}

class _VehicleScreenState extends State<VehicleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Vehicles', backicon: const Icon(Icons.arrow_back_ios,color: Colors.grey,),
          backgroundColor: Colors.white, textstyle: Colors.black,),
        body: Container(
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
                    Text("P87800",),
                    Text("Toyota year is 2015, Black",style: TextStyle(color: Colors.grey),),
                  ],
                ),
                Spacer(),
                Icon(Icons.circle_outlined,color: Colors.blue,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
