import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:rides_driver_app/driver_view_screens/auth/signup/signupscreen2.dart';
import 'package:rides_driver_app/driver_view_screens/driver_dashboad/driver_dashboard.dart';
import 'package:rides_driver_app/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../driver_view_screens/auth/otp_screen.dart';
import '../driver_view_screens/driver_dashboad/bottom_navigation_bar.dart';
import '../models/driver_user_model.dart';
class AuthProvider extends ChangeNotifier{
  bool _isSignedIn=false;
  bool isLoading=false;
  String _uid="";
  String get uid=>_uid;

  DriverUserModel? _driverUserModel;

  DriverUserModel get driverModel=>_driverUserModel!;

  final FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore=FirebaseFirestore.instance;
  final FirebaseStorage _firebaseStorage=FirebaseStorage.instance;

  DriverUserModel localDriverUserModel = DriverUserModel.getInstance();

  AuthProvider(){
    checkSign();
  }
  void checkSign()async{
    final SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
    _isSignedIn=sharedPreferences.getBool("is_signedin")?? false;
    notifyListeners();
  }
  void signInWithPhone(BuildContext context,String phoneNumber, bool fromLogin)async{

    try{
      isLoading = true;
      notifyListeners();
      await FirebaseAuth.instance.verifyPhoneNumber(
        // phoneNumber: localDriverUserModel.phoneNumber,
         phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async{
          await _firebaseAuth.signInWithCredential(credential);
          print("Yahooooooo! its completed");
        },
        verificationFailed: (FirebaseAuthException e) {
          isLoading = false;
          notifyListeners();
          print("Yahooooooo! ${e.message}");
        },
        codeSent: (String verificationId, int? resendToken) async {
          isLoading = false;
          notifyListeners();
          print("Yahooooooo! code Sent");
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpForm(verificationId: verificationId, fromLogin: fromLogin)));
          print("Yahooooooo! code Sent ${resendToken}");
        },
        timeout: const Duration(seconds: 60),
        codeAutoRetrievalTimeout: (String verificationId) {
          print("Yahooooooo! codeAutoRetrievalTimeout");
        },
      );

    }on FirebaseException catch(e){
      isLoading = false;
      notifyListeners();
      Utils.flushBarErrorMessage(e.message.toString(), context);
    }
  }
  void verifyOtp({
  required BuildContext context,
  required String verificationId,
    required String userOtp,
    required Function onSuccess,
})async{
    isLoading=true;
    notifyListeners();
    try{
      PhoneAuthCredential creds=PhoneAuthProvider.credential(verificationId: verificationId, smsCode: userOtp);
      User? user= (await _firebaseAuth.signInWithCredential(creds)).user;
      if(user!=null){
        _uid=user.uid;
        onSuccess(true);
      }else{
        onSuccess(false);
      }
    }on FirebaseException catch(e){
      Utils.flushBarErrorMessage(e.message.toString(), context);
      isLoading=false;
      notifyListeners();
    }
  }
  Future<bool>checkExistingUser(BuildContext context)async{
    DocumentSnapshot snapshot=await _firebaseFirestore.collection("users").doc(_uid).get();
    if(snapshot.exists){
      isLoading=false;
      notifyListeners();
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MyBottomNavigationBar()), (route) => false);
      return true;
    }else {
      isLoading=false;
      notifyListeners();
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SecondSignUpScreen()), (route) => false);
      return false;
    }
  }
  void saveUserDataToFirebase({required BuildContext context, required DriverUserModel driverUserModel,
    required File profilePic,required File vehicleRegistrationCertificate,required File vehicleImage,
    required File drivingLicenceimage,required Function onSucess,})async{
   isLoading=true;
   notifyListeners();
   try{


     await storeFileToStorage("profilePic/$uid/",profilePic).then((value) {
       driverUserModel.profileimage=value;
       driverUserModel.accountCreationDate=DateTime.now().millisecondsSinceEpoch.toString();
       driverUserModel.phoneNumber=_firebaseAuth.currentUser!.phoneNumber!;
       driverUserModel.userId=_firebaseAuth.currentUser!.phoneNumber!;
     });
     //_driverUserModel=driverUserModel;
     await _firebaseFirestore.collection("users").doc(_uid).set(driverUserModel.toMap()).then((value) {
       onSucess();
       isLoading=false;
       notifyListeners();
     });
   }on FirebaseAuthException catch(e){
     Utils.flushBarErrorMessage(e.message.toString(), context);
     isLoading=false;
     notifyListeners();
   }
  }

  Future<String> storeFileToStorage(String ref,File file)async{
    UploadTask uploadTask=_firebaseStorage.ref().child(ref).putFile(file);
    TaskSnapshot snapshot=await uploadTask;
    String downloadUrl=await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }
}