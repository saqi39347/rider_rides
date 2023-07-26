import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/app_colors.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 1.7,
                width: double.infinity,
                child: Image.asset(
                  'assets/map.jpeg',
                  fit: BoxFit.cover,
                )),
            Container(
              height: 70,
              width: double.infinity,
              color: AppColors.appThemeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.forward_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    'Go Online',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            ListTile(
                              subtitle: Text('Today\'s earnings '),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 12,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'LL 0.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            padding:const EdgeInsets.only(top: 5),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text('Driver Score'),
                                    SizedBox(),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 12,
                                    ),
                                  ],
                                ),

                                // ListTile(subtitle: Text('Driver Score'),trailing: Icon(Icons.arrow_forward_ios_rounded, size: 12,),),
                            // const    SizedBox(width: 2,),
                          const   Padding(
                               padding:  EdgeInsets.all(8.0),
                               child:    Text(
                                    '15',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                             )
                              ],
                            ),
                          ),
                          Container(
                            padding:const EdgeInsets.only(),
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    Text('Acceptance Rate'),
                                    SizedBox(),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 12,
                                    ),
                                  ],
                                ),
                               
                                // SizedBox(
                                //   height: 2,
                                // ),
                           const     Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '99%',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
