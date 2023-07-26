import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rides_driver_app/appassets/appassets.dart';
import 'package:rides_driver_app/provider/app_provider.dart';
import 'package:rides_driver_app/provider/authprovider.dart';
import 'package:rides_driver_app/repository/app_repo.dart';
import 'package:rides_driver_app/utils/routes/routes.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'package:rides_driver_app/views/bottombar/bottombar_screen.dart';

import 'driver_view_screens/auth/pre_login_screen.dart';
import 'firebase_options.dart';
import 'views/decision_screen/decission_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> AppProvider(appRepo: AppRepo())),
        ChangeNotifierProvider(create: (_)=> AuthProvider()),
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
        // appBarTheme: const AppBarTheme(
        //   iconTheme: IconThemeData(color: Colors.white),
        //   color: AppAssets.whiteColor,
        //   titleTextStyle: TextStyle(color: Colors.black)
        //   //<-- SEE HERE
        // ),
      ),

      // MyBottomBarScreen()
      // DecisionScreen(),
      initialRoute: RoutesName.preLogin,
      onGenerateRoute: Routes.generateRoute,
        // PreLoginScreen(),

    );
  }
}
