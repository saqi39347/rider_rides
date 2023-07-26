import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/app_colors.dart';
import 'package:rides_driver_app/utils/custom_navigator.dart';
import 'package:rides_driver_app/views/driver/car_registration/car_registration_template.dart';

class AutoAcceptScreen extends StatefulWidget {
  const AutoAcceptScreen({super.key});

  @override
  State<AutoAcceptScreen> createState() => _AutoAcceptScreenState();
}

class _AutoAcceptScreenState extends State<AutoAcceptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Auto-Accept',
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
                  trailing: Padding(
                    padding:const EdgeInsets.all(8.0),
                    child: Switch(value: true, onChanged:(e){})
                  ),
                  // Image.asset('assets/small_logo.png', height: 25,width: 25,),
                  onTap: () => null,
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),

                  title: const Text(
                    'Auto Accept',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ),
                const Divider(
                  thickness: 0.5,
                ),
                
              ],
            ),
          ),
          const SizedBox(height: 10,),
               const   Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text(
                    
                      'Incoming ride requests will be accepted automatically..Auto-Accept will be disabled when you decline, cancel or miss a ride request.',
                     textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                 ),
        ],
      ),
   
    );
  }
}
