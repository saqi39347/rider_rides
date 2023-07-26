import 'dart:io';

import 'package:flutter/material.dart';

import 'package:rides_driver_app/utils/app_colors.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/document_uploaded_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/location_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/upload_document_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/vehical_color_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/vehical_make.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/vehical_model_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/vehical_model_year_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/vehical_number_page.dart';
import 'package:rides_driver_app/views/driver/car_registration/pages/vehical_type_page.dart';

import '../../../widgets/green_intro_widget.dart';
import '../verification_pending_screen.dart';


class CarRegistrationTemplate extends StatefulWidget {
  const CarRegistrationTemplate({Key? key}) : super(key: key);

  @override
  State<CarRegistrationTemplate> createState() => _CarRegistrationTemplateState();
}

class _CarRegistrationTemplateState extends State<CarRegistrationTemplate> {


  String selectedLocation = '';
  String selectedVehicalType =  '';
  String selectedVehicalMake =  '';
  String selectedVehicalModel =  '';
  String selectModelYear = '';
  PageController pageController = PageController();
  TextEditingController vehicalNumberController = TextEditingController();
  String vehicalColor = '';
  File? document;



  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          greenIntroWidgetWithoutLogos(title: 'Car Registration',subtitle: 'Complete the process detail'),

          const SizedBox(height: 20,),

          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PageView(
              onPageChanged: (int page){
                currentPage = page;
              },
              controller: pageController,
              physics:const NeverScrollableScrollPhysics(),
              children: [

                LocationPage(selectedLocation: selectedLocation,onSelect: (String location){
                  setState(() {
                    selectedLocation = location;
                  });
                },),

                VehicalTypePage(
                  selectedVehical: selectedVehicalType,
                  onSelect: (String vehicalType){
                    setState(() {
                      selectedVehicalType = vehicalType;
                    });
                  },
                ),

                VehicalMakePage(
                  selectedVehical: selectedVehicalMake,
                  onSelect: (String vehicalMake){
                    setState(() {
                      selectedVehicalMake = vehicalMake;
                    });
                  },
                ),

                VehicalModelPage(
                  selectedModel: selectedVehicalModel,
                  onSelect: (String vehicalModel){
                    setState(() {
                      selectedVehicalModel = vehicalModel;
                    });
                  },
                ),
                VehicalModelYearPage(
                  onSelect: (int year){
                    setState(() {
                      selectModelYear = year.toString();
                    });
                  },
                ),

                VehicalNumberPage(
                  controller: vehicalNumberController,
                ),

                VehicalColorPage(
                  onColorSelected: (String selectedColor){
                    vehicalColor = selectedColor;
                  },
                ),
                UploadDocumentPage(onImageSelected: (File image){
                  document = image;
                },),
                DocumentUploadedPage()
              ],
            ),
          ),),

          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:   FloatingActionButton(onPressed: (){


                  if(currentPage<8){
                    pageController.animateToPage(currentPage+1, duration: const Duration(seconds: 1), curve: Curves.easeIn);

                  }else{
                  }


                },child: Icon(Icons.arrow_forward,color: Colors.white,),backgroundColor: AppColors.appThemeColor,)),
              )

          
        ],
      ),
    );
  }



  
}