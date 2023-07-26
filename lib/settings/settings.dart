import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rides_driver_app/appassets/appassets.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:
    Scaffold(
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.myBackgroundColor,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text("Geo Mar",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("+96181603552",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
            SizedBox(height: 5,),
            Text("Geomar011980@hotmail.com",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.VehicleScreen);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    children: [
                      Icon(MdiIcons.car,size: 30,color: Colors.grey,),
                     const SizedBox(width: 20,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Vehicles",textAlign: TextAlign.start,),
                          Text("P87800 Toyota Yaris 2015",),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios,color: Colors.grey,)

                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: Divider(color: Colors.grey, thickness: 0.1),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, RoutesName.NavigationScreen);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    children: [
                      Icon(MdiIcons.navigation,size: 30,color: Colors.grey,),
                      const SizedBox(width: 20,),
                      Text("Navigation",textAlign: TextAlign.start,),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios,color: Colors.grey,)

                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: Divider(color: Colors.grey, thickness: 0.1),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    Icon(MdiIcons.account,size: 30,color: Colors.grey,),
                    const SizedBox(width: 20,),
                    Text("Account",textAlign: TextAlign.start,),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios,color: Colors.grey,)

                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: Divider(color: Colors.grey, thickness: 0.1),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
              ),
              child: const Padding(
                padding:  EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  children: [
                    Icon(Icons.settings,size: 30,color: Colors.grey,),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Vehicles",textAlign: TextAlign.start,),
                        Text("P87800 Toyota Yaris 2015",),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

