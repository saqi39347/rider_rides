import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:rides_driver_app/provider/app_provider.dart';
import 'package:rides_driver_app/provider/authprovider.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'package:rides_driver_app/utils/utils.dart';

import '../../../appassets/appassets.dart';
import '../../../widgets/new widget/custom_textfeild.dart';
import '../../../widgets/new widget/primary_button/primary_btn.dart';
class SignUpScreen extends StatefulWidget {
   SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   final _formkey=GlobalKey<FormState>();

  TextEditingController emailController=TextEditingController();
  TextEditingController numberController=TextEditingController();
  TextEditingController cityController=TextEditingController();

  String countryCode = "+92";

  FirebaseAuth _auth=FirebaseAuth.instance;

Country selectedCountry=Country(
    phoneCode: "+92",
    countryCode: "+92",
    e164Sc: 0,
    geographic:
    true,
    level: 1,
    name: "Pakistan",
    example: "Pakistan",
    displayName: "Pakistan",
    displayNameNoCountryCode: "PAK",
    e164Key: "");
   // Future<void> verifyPhone(String number) async{
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context,provider,child){
      return SafeArea(
          child: Scaffold(
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: AppAssets.myBackgroundColor,
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50,),
                      Text("Sign Up",style: TextStyle(color: AppAssets.appPrimaryColor,
                          fontFamily: AppAssets.poppinsBold,fontSize: 24),),
                      SizedBox(height: 13,),
                      Text("Please sign up to your account.",style: TextStyle(color: Color(0xFF848484),fontFamily: AppAssets.poppinsRegular,fontSize: 14),),
                      SizedBox(height: 19,),


                      TextFiledForText(
                        controller: cityController,
                        hint: 'Enter your City',
                        keyboardType: TextInputType.text,
                        onChange: (String ) {},
                      ),
                      SizedBox(height: 30,),
                      TextFiledForText(
                        controller: emailController,
                        hint: 'Enter your Email',
                        keyboardType: TextInputType.emailAddress,
                        onChange: (String ) {},
                      ),
                      SizedBox(height: 30,),

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
                          child: Row(
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
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(hintText: "Enter number",border: InputBorder.none),
                                  controller: numberController,
                                ),
                              ),
                            ],
                          )
                      ),

                      SizedBox(height: 30,),
                      provider.isLoading ?  SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(),
                      ) :PrimaryButton(
                          buttonTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          buttonText: "Next ->",
                          onPress: ()async{
                            if(_formkey.currentState!.validate()){
                              if(emailController.text.isEmpty){
                                Utils.flushBarErrorMessage("Enter Email", context);
                                //show Error Message here
                                return;
                              }

                              if(cityController.text.isEmpty){
                                Utils.flushBarErrorMessage("Enter City", context);
                                return;
                              }

                              if(numberController.text.isEmpty){
                                Utils.flushBarErrorMessage("Enter Number", context);
                                return;
                              }

                              String phoneNumber = "$countryCode${numberController.text}";
                              var provider = Provider.of<AppProvider>(context, listen: false);
                              provider.localDriverUserModel.city = cityController.text;
                              provider.localDriverUserModel.email = emailController.text;
                              provider.localDriverUserModel.phoneNumber = phoneNumber;
                              //
                              // await FirebaseAuth.instance.verifyPhoneNumber(
                              //   //phoneNumber: provider.localDriverUserModel.phoneNumber,
                              //   phoneNumber: "${countryCode + numberController.toString() }",
                              //   verificationCompleted: (PhoneAuthCredential credential) {
                              //     print("Yahooooooo! its completed");
                              //   },
                              //   verificationFailed: (FirebaseAuthException e) {
                              //     print("Yahooooooo! ${e.message}");
                              //   },
                              //   codeSent: (String verificationId, int? resendToken) {
                              //     print("Yahooooooo! code Sent");
                              //   },
                              //   codeAutoRetrievalTimeout: (String verificationId) {
                              //     print("Yahooooooo! codeAutoRetrievalTimeout");
                              //   },
                              // );

                              sendPhoneNumber();

                              // Navigator.pushNamed(context, RoutesName.secondSignUpScreen);
                            }
                          },
                          buttonColor: AppAssets.appPrimaryColor),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",style: TextStyle(color: Color(0xFF848484),fontFamily: AppAssets.poppinsRegular,fontSize: 14),),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Login",style: TextStyle(decoration: TextDecoration.underline,color: AppAssets.appPrimaryColor,
                            fontFamily: AppAssets.poppinsSemiBold,fontSize: 14,))),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
      );
    });
    }
   void sendPhoneNumber(){
     final ap=Provider.of<AuthProvider>(context,listen: false);
     String phoneNumber=numberController.text.trim();
     ap.signInWithPhone(context, "${countryCode}${phoneNumber}}", false);

  }
}
