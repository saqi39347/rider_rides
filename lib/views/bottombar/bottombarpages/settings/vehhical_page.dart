import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/app_colors.dart';
import 'package:rides_driver_app/utils/custom_navigator.dart';
import 'package:rides_driver_app/views/driver/car_registration/car_registration_template.dart';

class VehicalPageScreen extends StatefulWidget {
  const VehicalPageScreen({super.key});

  @override
  State<VehicalPageScreen> createState() => _VehicalPageScreenState();
}

class _VehicalPageScreenState extends State<VehicalPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: InkWell(
          onTap: (){
               navigate(context,const CarRegistrationTemplate());
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            // onPressed: () {
           
            // },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.add),
                SizedBox(
                  width: 5,
                ),
                Text('add new vehicle')
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Vehicles',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 93,
            child: Column(
              children: [
                ListTile(
                  // tileColor: ,
                  trailing: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: AppColors.appThemeColor,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  // Image.asset('assets/small_logo.png', height: 25,width: 25,),
                  onTap: () => null,
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),

                  title: const Text(
                    'P8700',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    'Toyota Yasir 2015, black',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // :
                  // Row(
                  //   children: const [
                  //     Icon(
                  //       Icons.phone,
                  //       color: Colors.grey,
                  //       size: 15,
                  //     ),
                  //     SizedBox(
                  //       width: 5,
                  //     ),
                  //     Text(
                  //       'Incoming call.',
                  //       style: TextStyle(
                  //         color: Colors.grey,
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 5,
                  //     ),
                  //     Text(
                  //       'Sat',
                  //       style: TextStyle(
                  //         color: Colors.grey,
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 5,
                  //     ),
                  //   ],
                  // ),
                ),
                const Divider(
                  thickness: 0.5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
