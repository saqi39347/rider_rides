import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';

import '../../appassets/appassets.dart';
import '../../provider/app_provider.dart';
import '../../provider/authprovider.dart';
import '../../widgets/new widget/custom_textfeild.dart';
import '../../widgets/new widget/primary_button/primary_btn.dart';
class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberController=TextEditingController();

  String validateMobile(String value){
    if(value.length!=10 ){
      return 'Mobile Number must Be 10 digits';
    }else{
      return "";
    }
  }
  String countryCode = "+92";

  FirebaseAuth _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, child) {
      return SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: AppAssets.myBackgroundColor,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  Text("Login",style: TextStyle(color: AppAssets.appPrimaryColor,
                      fontFamily: AppAssets.poppinsBold,fontSize: 24),),
                  const SizedBox(height: 13,),
                  Text("Login to your account.",style: TextStyle(color: Color(0xFF848484),fontFamily: AppAssets.poppinsRegular,fontSize: 14),),
                  const SizedBox(height: 30,),
                  Container(
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      width: double.infinity,
                      padding: const EdgeInsets.only(top:6, bottom: 6, left: 2, right: 6),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppAssets.whiteColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppAssets.textLightColor, width: 0.1),
                        boxShadow: [
                          BoxShadow(
                            color: AppAssets.shadowColor.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 16,
                            offset: const Offset(0, 3),
                          )],
                      ),
                      child:  Row(
                        children: [
                          CountryCodePicker(
                            enabled: true,
                            initialSelection: '+92',
                            showCountryOnly: false,
                            favorite: ['+92','PAK'],
                            onChanged: (value) {
                              setState(() {
                                countryCode = value.toString();
                              });
                            },
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: numberController,
                              decoration: InputDecoration(hintText: "Enter number",border: InputBorder.none),
                              validator: (val){
                                if(numberController.text.length!=10){
                                  return 'Please enter valid mobile number';
                                }else{
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      )
                  ),

                  SizedBox(height: 30,),
                  provider.isLoading ? const SizedBox(
                    width: 30,
                    height: 30,
                    child: CircularProgressIndicator(),
                  ) :
                  PrimaryButton(
                      buttonTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                      buttonText: "Next",
                      onPress: (){
                        String phoneNumber=numberController.text.trim();
                        //print(phoneNumber);
                        provider.signInWithPhone(context, "${countryCode}${phoneNumber}}", true);
                        //Navigator.pushNamed(context, RoutesName.OtpForm);
                      },
                      buttonColor: AppAssets.appPrimaryColor),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: Color(0xFF848484),fontFamily: AppAssets.poppinsRegular,fontSize: 14),),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, RoutesName.signUp);
                      }, child: Text("Sign Up",style: TextStyle(decoration: TextDecoration.underline,color: AppAssets.appPrimaryColor,
                        fontFamily: AppAssets.poppinsSemiBold,fontSize: 14,))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

   void sendPhoneNumber(){
     final ap=Provider.of<AuthProvider>(context,listen: false);
     String phoneNumber=numberController.text.trim();
     ap.signInWithPhone(context, "${countryCode}${phoneNumber}}", true);
   }
}
