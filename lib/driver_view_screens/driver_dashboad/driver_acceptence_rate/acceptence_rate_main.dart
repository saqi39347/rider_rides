import 'package:flutter/material.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';

import '../../../appassets/appassets.dart';
class AcceptenceRate extends StatefulWidget {
  const AcceptenceRate({Key? key}) : super(key: key);

  @override
  State<AcceptenceRate> createState() => _AcceptenceRateState();
}

class _AcceptenceRateState extends State<AcceptenceRate> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 70,
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
              Expanded(
                  flex: 2,
                  child: Container(

                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          const TabBar(
                            labelColor: Colors.black,
                            isScrollable: true,
                            tabs:  [
                              Tab(text: '10.07-16.07',),
                              Tab(text: 'Current Week',),
                              Tab(text: 'Past 3 Months'),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children:  [
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Container(
                                          height: 40,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1.0, // soften the shadow
                                                //extend the shadow
                                                offset: Offset(
                                                  1.0, // Move to right 5  horizontally
                                                  1.0, // Move to bottom 5 Vertically
                                                ),
                                              )
                                            ],
                                          ),
                                          child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Container(
                                          height: 40,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1.0, // soften the shadow
                                                //extend the shadow
                                                offset: Offset(
                                                  1.0, // Move to right 5  horizontally
                                                  1.0, // Move to bottom 5 Vertically
                                                ),
                                              )
                                            ],
                                          ),
                                          child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20,),
                                      Container(
                                          height: 40,
                                          width: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1.0, // soften the shadow
                                                //extend the shadow
                                                offset: Offset(
                                                  1.0, // Move to right 5  horizontally
                                                  1.0, // Move to bottom 5 Vertically
                                                ),
                                              )
                                            ],
                                          ),
                                          child: const Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  child: DefaultTabController(
                    length: 7,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.black,
                          isScrollable: true,
                          tabs:  [
                            Tab(text: 'Mon',),
                            Tab(text: 'Tue',),
                            Tab(text: 'Wed'),
                            Tab(text: 'Thu'),
                            Tab(text: 'Fri'),
                            Tab(text: 'Sat'),
                            Tab(text: 'Sun'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children:  [
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 40,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1.0, // soften the shadow
                                              //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 5  horizontally
                                                1.0, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                  ],
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 40,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1.0, // soften the shadow
                                              //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 5  horizontally
                                                1.0, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                  ],
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 40,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1.0, // soften the shadow
                                              //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 5  horizontally
                                                1.0, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                  ],
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 40,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1.0, // soften the shadow
                                              //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 5  horizontally
                                                1.0, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                  ],
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 40,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1.0, // soften the shadow
                                              //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 5  horizontally
                                                1.0, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                  ],
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 40,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1.0, // soften the shadow
                                              //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 5  horizontally
                                                1.0, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                  ],
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                        height: 40,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1.0, // soften the shadow
                                              //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 5  horizontally
                                                1.0, // Move to bottom 5 Vertically
                                              ),
                                            )
                                          ],
                                        ),
                                        child: Center(child: Text('0h 0m',style: TextStyle(fontWeight: FontWeight.bold),))),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
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
