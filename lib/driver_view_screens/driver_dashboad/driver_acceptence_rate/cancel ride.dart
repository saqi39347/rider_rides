import 'package:flutter/material.dart';

import '../../../appassets/appassets.dart';
class CancelScreen extends StatefulWidget {
  const CancelScreen({Key? key}) : super(key: key);

  @override
  State<CancelScreen> createState() => _CancelScreenState();
}

class _CancelScreenState extends State<CancelScreen> {
  final double percentage = 0.75;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppAssets.myBackgroundColor,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 60,
                color: Colors.white,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back_ios,size: 20,)),
                    const Expanded(child: Center(child: Text("Activity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)))
                  ],
                ),
              ),
              SizedBox(height: 20,),
              const Text("Reason for post 50 cancelled rides"),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.35,
                margin: EdgeInsets.only(left: 15,right: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  )
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(15),

                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.green,
                          ),
                         Spacer(),
                          Text("18%"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.red,
                          ),
                         Spacer(),
                          Text("18%"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.yellow,
                          ),
                         Spacer(),
                          Text("18%"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.blue,
                          ),
                         Spacer(),
                          Text("25%"),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 30,
                                  child: Container(
                                    height: 8,
                                    color: Colors.green,
                                  )),
                              Expanded(
                                  flex: 20,
                                  child: Container(
                                    height: 8,
                                    color: Colors.red,
                                  )),
                              Expanded(
                                  flex: 25,
                                  child: Container(
                                    height: 8,
                                    color: Colors.yellow,
                                  )),
                              Expanded(
                                  flex: 25,
                                  child: Container(
                                    height: 8,
                                    color: Colors.blue,
                                  )),
                            ],
                          ),
                        ),
                      ),
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
