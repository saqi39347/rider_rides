import 'package:flutter/material.dart';

import '../../appassets/appassets.dart';
import '../../utils/routes/routes_names.dart';
import '../../widgets/new widget/primary_button/primary_btn.dart';
class PreLoginScreen extends StatelessWidget {
  const PreLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.myBackgroundColor,
        child:  Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("rides-rides",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45),),
                  Divider(
                    height: 50,
                    indent: 150,
                    endIndent: 150,
                    color: Colors.grey.withOpacity(0.5),
                    thickness: 2,
                  ),
                  SizedBox(height: 15,),
                  const Text("Drive with rides-rides.",style: TextStyle(),),
                  const Text("Earn extra money driving.",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
           Align(
             alignment: Alignment.bottomCenter,
             child: Column(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 PrimaryButton(
                   buttonColor: AppAssets.appPrimaryColor,
                   buttonText: 'Log in',
                   buttonTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                   onPress: (){
                     Navigator.pushNamed(context, RoutesName.login);
                   },

                 ),
                 SizedBox(height: 15,),
                 PrimaryButton(
                   buttonColor: AppAssets.appGrayColor,
                   buttonText: 'Sign Up',
                   buttonTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                   onPress: (){
                     Navigator.pushNamed(context, RoutesName.signUp);
                   },

                 ),
                 SizedBox(height: 20,)
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
