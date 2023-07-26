import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:rides_driver_app/appassets/appassets.dart';
import 'package:rides_driver_app/driver_view_screens/auth/signup/signupscreen2.dart';
import 'package:rides_driver_app/provider/authprovider.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'package:rides_driver_app/utils/utils.dart';
import 'package:rides_driver_app/widgets/new%20widget/primary_button/primary_btn.dart';

class OtpForm extends StatefulWidget {
  final String verificationId;
  bool fromLogin;
  OtpForm({Key? key, required this.verificationId, required this.fromLogin}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final pinController = TextEditingController();

  final focusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("Yesssssss: ${widget.verificationId}");
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );

    final isLoading=Provider.of<AuthProvider>(context,listen: true).isLoading;

    return Scaffold(
      body: Form(
          child:isLoading==true?const Center(child: CircularProgressIndicator(
            color: Colors.purple,
          ),):Container(
        padding: EdgeInsets.all(20),
        child:  Column(
          children: [
            const SizedBox(height: 40,),
            const Text("Verification Code",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            const SizedBox(height: 10,),
            const Text("Please enter verification code at your give number",),
            const SizedBox(height: 10,),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Directionality(
                    // Specify direction if desired
                    textDirection: TextDirection.ltr,
                    child: Pinput(
                      length: 6,
                      controller: pinController,
                      focusNode: focusNode,
                      androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                      listenForMultipleSmsOnAndroid: true,
                      defaultPinTheme: defaultPinTheme,
                      validator: (value) {
                        return value!.length == 6 ?
                        verifyOtp(context, value.toString())
                            : 'Pin is incorrect';
                      },
                      // onClipboardFound: (value) {
                      //   debugPrint('onClipboardFound: $value');
                      //   pinController.setText(value);
                      // },
                      hapticFeedbackType: HapticFeedbackType.lightImpact,
                      onCompleted: (pin) {
                        debugPrint('onCompleted: $pin');
                      },
                      onChanged: (value) {
                        debugPrint('onChanged: $value');
                      },
                      cursor: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 9),
                            width: 22,
                            height: 1,
                            color: focusedBorderColor,
                          ),
                        ],
                      ),
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: focusedBorderColor),
                        ),
                      ),
                      submittedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          color: fillColor,
                          borderRadius: BorderRadius.circular(19),
                          border: Border.all(color: focusedBorderColor),
                        ),
                      ),
                      errorPinTheme: defaultPinTheme.copyBorderWith(
                        border: Border.all(color: Colors.redAccent),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      focusNode.unfocus();
                      formKey.currentState!.validate();
                      if(pinController.text.isNotEmpty || pinController.text.length == 6){
                        verifyOtp(context, pinController.text);
                      }else{
                        Utils.flushBarErrorMessage("Enter 6-Digits Code", context);
                      }

                      //  Navigator.pushNamed(context, RoutesName.MyBottomNavigationBar
                      // );
                    },
                    child: const Text('Validate'),
                  ),
                  SizedBox(height: 20,),
                  // Text("Didn't receive any code?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
                  // Text("Resend any code?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
  verifyOtp(BuildContext context,String userOtp){
    final ap=Provider.of<AuthProvider>(context,listen: false);
    ap.verifyOtp(context: context,
      verificationId: widget.verificationId, userOtp: userOtp, onSuccess: (status){
        if(status){
          ap.checkExistingUser(context);
        }else{
          //error
        }

      });
  }
}
