import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/custom_navigator.dart';

import 'package:rides_driver_app/views/driver/car_registration/car_registration_template.dart';
import 'package:rides_driver_app/views/login_screen.dart';

import '../../widgets/green_intro_widget.dart';
import '../../widgets/my_button.dart';
import '../driver/profile_setup.dart';

class DecisionScreen extends StatelessWidget {
  DecisionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              greenIntroWidget(),
              const SizedBox(
                height: 50,
              ),
              DecisionButton('assets/driver.png', 'Login As Driver', () {
                navigate(context, const LoginScreen());
              }, double.infinity * 0.8),
              // const SizedBox(
              //   height: 20,
              // ),
              // DecisionButton('assets/customer.png', 'Login As User', () {
              //   navigate(context, const LoginScreen());
              // }, double.infinity * 0.8),
            ],
          ),
        ),
      ),
    );
  }
}
