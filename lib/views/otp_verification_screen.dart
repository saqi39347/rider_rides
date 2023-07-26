import 'package:flutter/material.dart';

import 'package:rides_driver_app/utils/app_colors.dart';
import 'package:rides_driver_app/utils/custom_navigator.dart';
import 'package:rides_driver_app/views/driver/profile_setup.dart';
import 'package:rides_driver_app/widgets/green_intro_widget.dart';

import '../widgets/otp_verification_widget.dart';

class OtpVerificationScreen extends StatefulWidget {

  String phoneNumber;
  OtpVerificationScreen(this.phoneNumber);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [


            Stack(
              children: [
                greenIntroWidget(),

                Positioned(
                  top: 60,
                  left: 30,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child:const Icon(Icons.arrow_back,color: AppColors.appThemeColor,size: 20,),
                    ),
                  ),
                ),


              ],
            ),

         const   SizedBox(
              height: 50,
            ),

            InkWell(
              onTap: (){
                navigate(context, DriverProfileSetup());
              },
              child: otpVerificationWidget()),


          ],
        ),
      ),
    );
  }
}
