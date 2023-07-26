import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rides_driver_app/driver_view_screens/auth/signup/sign_up.dart';
import 'package:rides_driver_app/driver_view_screens/driver_dashboad/bottom_navigation_bar.dart';
import 'package:rides_driver_app/driver_view_screens/driver_dashboad/driver_dashboard.dart';
import 'package:rides_driver_app/driver_view_screens/driver_dashboad/inbox/news.dart';
import 'package:rides_driver_app/driver_view_screens/driver_dashboad/rides/rides_details.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';

import '../../driver_view_screens/auth/login.dart';
import '../../driver_view_screens/auth/otp_screen.dart';
import '../../driver_view_screens/auth/pre_login_screen.dart';
import '../../driver_view_screens/auth/signup/signupscreen2.dart';
import '../../driver_view_screens/driver_dashboad/compaign/compaign.dart';
import '../../driver_view_screens/driver_dashboad/compaign/previous_compaign.dart';
import '../../driver_view_screens/driver_dashboad/driver_acceptence_rate/acceptence_rate_main.dart';
import '../../driver_view_screens/driver_dashboad/driver_acceptence_rate/bottom_tab_bar.dart';
import '../../driver_view_screens/driver_dashboad/driver_score/driver_score.dart';
import '../../driver_view_screens/driver_dashboad/navigation/navigatioscreen.dart';
import '../../driver_view_screens/driver_dashboad/rides/rides.dart';
import '../../driver_view_screens/driver_dashboad/todays_earning/todays_earning.dart';
import '../../driver_view_screens/driver_dashboad/vehicle/vehicle.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final argument=settings.arguments;
    switch(settings.name){
      case RoutesName.preLogin:
        return MaterialPageRoute(builder: (BuildContext context)=>PreLoginScreen());
        case RoutesName.signUp:
        return MaterialPageRoute(builder: (BuildContext context)=>SignUpScreen());
        case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context)=>LoginScreen());
        // case RoutesName.OtpForm:
        // return MaterialPageRoute(builder: (BuildContext context)=> OtpForm());
        case RoutesName.DriverDashBoard:
        return MaterialPageRoute(builder: (BuildContext context)=>const DriverDashBoad());
        case RoutesName.secondSignUpScreen:
        return MaterialPageRoute(builder: (BuildContext context)=>const SecondSignUpScreen());
        case RoutesName.MyBottomNavigationBar:
        return MaterialPageRoute(builder: (BuildContext context)=> const MyBottomNavigationBar());
        case RoutesName.NewsScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const NewsScreen());
        case RoutesName.CompaignScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const CompaignScreen());
        case RoutesName.PreviousCompaign:
        return MaterialPageRoute(builder: (BuildContext context)=> const PreviousCompaign());
        case RoutesName.Rides:
        return MaterialPageRoute(builder: (BuildContext context)=> const Rides());
        case RoutesName.RidesDetail:
        return MaterialPageRoute(builder: (BuildContext context)=> const RidesDetail());
        case RoutesName.TodaysEarningScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const TodaysEarningScreen());
        case RoutesName.DriverScoreScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const DriverScoreScreen());
        case RoutesName.AcceptenceRate:
        return MaterialPageRoute(builder: (BuildContext context)=> const AcceptenceRate());
        case RoutesName.BottomTabBar:
        return MaterialPageRoute(builder: (BuildContext context)=> const BottomTabBar());
        case RoutesName.VehicleScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const VehicleScreen());
        case RoutesName.NavigationScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> const NavigationScreen());


      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}