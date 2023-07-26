import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'dart:math' as math;
import '../../appassets/appassets.dart';
class DriverDashBoad extends StatefulWidget {
  const DriverDashBoad({Key? key}) : super(key: key);

  @override
  State<DriverDashBoad> createState() => _DriverDashBoadState();
}

class _DriverDashBoadState extends State<DriverDashBoad> {

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.4989505, 74.2766072),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  final List<Marker> _marker=[];
  final List<Marker> _list= [
      Marker(
       position: LatLng(31.4989505, 74.2766072),markerId: MarkerId('1'),
       infoWindow: InfoWindow(
         title: "My current position"
       )
     ),


  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
    loadData();
  }
  // void goToFunc()async{
  //   await Future.delayed(Duration(milliseconds: 10000),(){
  //     _goToTheLake();
  //   });
  // }

  Future<Position> getUserCurrentLocation()async{
    await Geolocator.requestPermission().then((value){
      
    }).onError((error, stackTrace) async{
      await Geolocator.requestPermission();
      print("error"+error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }
  loadData(){
    getUserCurrentLocation().then((value) async{
      print("my current loc");
      print(value.latitude.toString() +" "+value.longitude.toString());
      _marker.add(
        Marker(
            markerId:  MarkerId("1"),
            position: LatLng(value.latitude,value.longitude),
            infoWindow: const InfoWindow(
          title: "my current location"
        ))
      );
      CameraPosition cameraPosition =CameraPosition(
          target: LatLng(value.latitude,value.longitude,),
          zoom: 14);
      final GoogleMapController controller=await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {

      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.myBackgroundColor,
        child:  Column(
          children: [
            Expanded(
              flex: 2,child: Container(

              child: GoogleMap(
                mapType: MapType.terrain,
                myLocationEnabled: true,
                markers: Set<Marker>.of(_marker),
                compassEnabled: false,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child:  Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Transform.rotate(
                        angle: 180 * math.pi /180,
                    child: Image.asset(AppAssets.farwardArrow,height: 20,width: 20,color: Colors.white,)),
                    const Expanded(child: Center(child: Text("Go Online",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))),

                  ],
                ),
              ),


            ),

            Expanded(
              flex: 1,child: Container(
              color: AppAssets.backgroundColor,
              child:  Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.TodaysEarningScreen);
                      },
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width*0.45,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20)
                         ),
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Today's earnings",style: TextStyle(color: Colors.grey),),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,)
                                ],
                              ),
                              Text("0.00 Rs",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15,left: 10),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, RoutesName.DriverScoreScreen);
                            },
                            child: Container(
                              height: 95,
                              width: MediaQuery.of(context).size.width*0.47,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Driver Score",style: TextStyle(color: Colors.grey),),
                                        Spacer(),
                                        Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,)
                                      ],
                                    ),
                                    Text("87%",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, RoutesName.BottomTabBar);
                            },
                            child: Container(

                              width: MediaQuery.of(context).size.width*0.47,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Acceptence Rate",style: TextStyle(color: Colors.grey),),
                                        Spacer(),
                                        Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,)
                                      ],
                                    ),
                                    Text("90%",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                          ),



                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),),
          ],)
      ),
    );
  }
}
