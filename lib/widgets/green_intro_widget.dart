import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rides_driver_app/utils/app_colors.dart';

Widget greenIntroWidget() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/mask.png'), fit: BoxFit.cover, ), color: AppColors.appThemeColor),
    height: 600,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/leaf icon.svg'),
        const SizedBox(
          height: 20,
        ),
        Text("Rides Rides", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 34),)
        // SvgPicture.asset('assets/greenTaxi.svg')
      ],
    ),
  );
}

Widget greenIntroWidgetWithoutLogos(
    {String title = "Profile Settings", String? subtitle}) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/mask.png'), fit: BoxFit.fill)),
    height: 300,
    child: Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          if (subtitle != null)
            Text(
              subtitle,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
        ],
      ),
    ),
  );
}
