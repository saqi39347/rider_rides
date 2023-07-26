import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rides_driver_app/appassets/appassets.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';
class TodaysEarningScreen extends StatefulWidget {
  const TodaysEarningScreen({Key? key}) : super(key: key);

  @override
  State<TodaysEarningScreen> createState() => _TodaysEarningScreenState();
}

class _TodaysEarningScreenState extends State<TodaysEarningScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppAssets.myBackgroundColor,
          child:  Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios,size: 20,)),
                      const Expanded(child: Center(child: Text("Current Week Earnings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)))
                    ],
                  ),
                  SizedBox(height: 80,),
                  Center(
                    child: CircularPercentIndicator(
                      radius: 130.0,
                      lineWidth: 26.0,
                      percent: 1.0,
                      center:   Text("Complete trips to see \n your earning here",style: TextStyle(color: Colors.grey,),),
                      progressColor: Colors.grey.withOpacity(0.001),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.blueDot,height: 10,width: 10,),
                      const SizedBox(width: 5,),
                      const Text("In App",style: TextStyle(color: Colors.grey),),
                      const SizedBox(width: 5,),
                      Container(
                        height: 20,
                        width: 1,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5,),
                      Image.asset(AppAssets.blueDot,height: 10,width: 10,color: Colors.green,),
                      const SizedBox(width: 5,),
                      const Text("Other",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Center(child: const Text("Show Breakdown >",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),
                  const Text("Balance",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 0.1,
                          blurRadius: 0.1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle
                              ),

                              child:Icon(MdiIcons.wallet,color: Colors.white,)),
                          const SizedBox(width: 10,),
                          const Text("LL 0",style: TextStyle(fontWeight: FontWeight.bold),),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Text("Activity",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 0.1,
                                blurRadius: 0.1,
                                offset: Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15,),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Hours",style: TextStyle(color: Colors.grey),),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 0.1,
                                blurRadius: 0.1,
                                offset: Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Trips",style: TextStyle(color: Colors.grey),),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("0/0",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("Completed trips/ All request",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey),),
                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
