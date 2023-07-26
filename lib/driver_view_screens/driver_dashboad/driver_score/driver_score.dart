import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';

import '../../../appassets/appassets.dart';
class DriverScoreScreen extends StatefulWidget {
  const DriverScoreScreen({Key? key}) : super(key: key);

  @override
  State<DriverScoreScreen> createState() => _DriverScoreScreenState();
}

class _DriverScoreScreenState extends State<DriverScoreScreen> {

  void _showAlertforRequestCancel(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("You Requested a cancellation"),
              Text("10%",style: TextStyle(color: Colors.grey),),

            ],
          ),
          content: Text('% of trips that your riders have cancelled with the reason "Driver asked to cancel". '),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
  void _showAlertforRiderCancel(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rider Cancelled"),
              Text("3%",style: TextStyle(color: Colors.grey),),

            ],
          ),
          content: const Text('% of trips that your riders have cancelled with the reason "Rider Cancelled". '),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppAssets.myBackgroundColor,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios,size: 20,)),
                    const Expanded(child: Center(child: Text("Driver Score",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)))
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              const Center(child: Text("Your Driver Score",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
              const Center(child: Text("87%",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70),)),
              LinearProgressIndicator(
                value: 0.7, // Set the progress value (0.0 to 1.0)
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue), // Customize the progress bar color
                backgroundColor: Colors.grey[300], // Customize the background color
              ),
              const SizedBox(height: 30,),
              const Center(child: Text("Calculated based on your past 100 trips.",style: TextStyle(color: Colors.grey),)),
              const SizedBox(height: 30,),
              Center(child: TextButton(child: const Text("Find out more about Driver Score",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),onPressed: (){},)),
              const SizedBox(height: 30,),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.2),
                child: Center(child: const Text("What reduced my Score?")),
              ),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Cancellation rate",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("% the last 100 trips that you or your riders have cancelled",style: TextStyle(color: Colors.grey),),
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  _showAlertforRequestCancel(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child:  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("You requested a cancellation"),
                      ),
                      const Spacer(),
                      Icon(MdiIcons.alertCircleOutline),
                      const SizedBox(width: 15,),
                      const Text("10%",style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(width: 15,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 1,),
              GestureDetector(
                onTap: (){
                  _showAlertforRiderCancel(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child:  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Ride Cancelled"),
                      ),
                      const Spacer(),
                      Icon(MdiIcons.alertCircleOutline),
                      const SizedBox(width: 15,),
                      const Text("3%",style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(width: 15,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
