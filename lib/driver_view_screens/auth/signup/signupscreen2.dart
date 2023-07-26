import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:im_stepper/stepper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:language_builder/language_builder.dart';
import 'package:provider/provider.dart';
import 'package:rides_driver_app/driver_view_screens/driver_dashboad/driver_dashboard.dart';
import 'package:rides_driver_app/models/driver_user_model.dart';
import 'package:rides_driver_app/provider/authprovider.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'package:uuid/uuid.dart';

import '../../../appassets/appassets.dart';
import '../../../provider/app_provider.dart';
import '../../../utils/utils.dart';
import '../../../widgets/new widget/custom_textfeild.dart';

class SecondSignUpScreen extends StatefulWidget {
  const SecondSignUpScreen({Key? key}) : super(key: key);

  @override
  State<SecondSignUpScreen> createState() => _SecondSignUpScreenState();
}

class _SecondSignUpScreenState extends State<SecondSignUpScreen> {

  File? image;
  Future pickImage() async{
    {
      try{
        final image=await ImagePicker().pickImage(source: ImageSource.gallery);
        if(image==null) return;
        final imageTemporary=File(image.path);
        /* var file=await MultipartFile;
       var responce= http.MultipartRequest('userImage',Uri.parse(AppUrl.registerUrl));

       print("--------${responce}");*/

        print("-----------: Image:"+image.path);

        setState(()=>this.image=imageTemporary);

      }on PlatformException catch(e){

      }
    }
  }

  File? profileImg;
  Future pickProfileImage() async{
    {
      try{
        final image=await ImagePicker().pickImage(source: ImageSource.gallery);
        if(image==null) return;
        final imageTemporary=File(image.path);
        /* var file=await MultipartFile;
       var responce= http.MultipartRequest('userImage',Uri.parse(AppUrl.registerUrl));

       print("--------${responce}");*/

        print("-----------: Image:"+image!.path);

        setState(()=>this.profileImg=imageTemporary);

      }on PlatformException catch(e){

      }
    }
  }

  File? vehicleRegistrationImg;
  Future pickVehicleRegImage() async{
    {
      try{
        final image=await ImagePicker().pickImage(source: ImageSource.gallery);
        if(image==null) return;
        final imageTemporary=File(image.path);
        /* var file=await MultipartFile;
       var responce= http.MultipartRequest('userImage',Uri.parse(AppUrl.registerUrl));

       print("--------${responce}");*/

        print("-----------: Image:"+image!.path);

        setState(()=>this.vehicleRegistrationImg=imageTemporary);

      }on PlatformException catch(e){

      }
    }
  }

  File? vehicleImg;
  Future pickVehicleImage() async{
    {
      try{
        final image=await ImagePicker().pickImage(source: ImageSource.gallery);
        if(image==null) return;
        final imageTemporary=File(image.path);
        /* var file=await MultipartFile;
       var responce= http.MultipartRequest('userImage',Uri.parse(AppUrl.registerUrl));

       print("--------${responce}");*/

        print("-----------: Image:"+image!.path);

        setState(()=>this.vehicleImg=imageTemporary);

      }on PlatformException catch(e){

      }
    }
  }


  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController lecencePlateController=TextEditingController();
  TextEditingController referalCodeController=TextEditingController();
  TextEditingController dateofBirthController=TextEditingController();
  TextEditingController drivingLicenceController=TextEditingController();
  TextEditingController companyNameController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  TextEditingController NZBNPlateController=TextEditingController();
  TextEditingController gstNumberController=TextEditingController();
  TextEditingController bankaccountholderController=TextEditingController();
  TextEditingController bankCodeController=TextEditingController();

  bool lastStep = false;
  int currentstep=0;
  bool ownVehicleCheck = false;

  continueStep() async {
    print("_____________: $currentstep");
    if(currentstep<3){
      setState(() {
        currentstep++;
        if(currentstep == 3) {
          lastStep = true;
        } else {
          lastStep = false;
        }
      });
    }else{
      storeData();
    }
    //   //Navigator.pushNamed(context, RoutesName.login);
    //   var provider = Provider.of<AppProvider>(context, listen: false);
    //
    //
    //   String uuid = Uuid().v4().toString();
    //   provider.localDriverUserModel.status = "Pending";
    //   provider.localDriverUserModel.userId = uuid;
    //   provider.localDriverUserModel.accountCreationDate = "ahsgd";
    //
    //   Map<String, dynamic> toFirestore = {
    //     "userId": provider.localDriverUserModel.userId,
    //     "city": provider.localDriverUserModel.city,
    //     "email": provider.localDriverUserModel.email,
    //     "phoneNumber": provider.localDriverUserModel.phoneNumber,
    //     "firstName": provider.localDriverUserModel.firstName,
    //     "lastName": provider.localDriverUserModel.lastName,
    //     "language": provider.localDriverUserModel.language,
    //     "referralCode": provider.localDriverUserModel.referralCode,
    //     "haveOwnVehicle": provider.localDriverUserModel.haveOwnVehicle,
    //     "vehicleType": provider.localDriverUserModel.vehicleType,
    //     "vehicleManufacturer": provider.localDriverUserModel.vehicleManufacturer,
    //     "vehicleModel": provider.localDriverUserModel.vehicleModel,
    //     "vehiclePlate": provider.localDriverUserModel.vehiclePlate,
    //     "vehicleColor": provider.localDriverUserModel.vehicleColor,
    //     "dateOfBirth": provider.localDriverUserModel.dateOfBirth,
    //     "drivingLicence": provider.localDriverUserModel.drivingLicence,
    //     "drivingLicenceExpiryYear": provider.localDriverUserModel.drivingLicenceExpiryYear,
    //     "drivingLicenceExpiryMonth": provider.localDriverUserModel.drivingLicenceExpiryMonth,
    //     "drivingLicenceExpiryDay": provider.localDriverUserModel.drivingLicenceExpiryDay,
    //     "drivingLicenceimage": provider.localDriverUserModel.drivingLicenceimage,
    //     "profileimage": provider.localDriverUserModel.profileimage,
    //     "vehicleRegistrationCertificate": provider.localDriverUserModel.vehicleRegistrationCertificate,
    //     "vehicleImage": provider.localDriverUserModel.vehicleImage,
    //     "billType": provider.localDriverUserModel.billType,
    //     "companyName": provider.localDriverUserModel.companyName,
    //     "companyAddress": provider.localDriverUserModel.companyAddress,
    //     "companyNzbn": provider.localDriverUserModel.companyNzbn,
    //     "companyGst": provider.localDriverUserModel.companyGst,
    //     "companyBankAccountHolderName": provider.localDriverUserModel.companyBankAccountHolderName,
    //     "companyBankCode": provider.localDriverUserModel.companyBankCode,
    //     "status": provider.localDriverUserModel.status,
    //     "userType": provider.localDriverUserModel.userType,
    //     "accountCreationDate": provider.localDriverUserModel.accountCreationDate,
    //   };
    //
    //   await FirebaseFirestore.instance
    //       .collection("users")
    //       .doc(uuid)
    //       .set(toFirestore);
    // }

  }
  cancelStep(){
    if(currentstep>0){
      setState(() {
        currentstep=currentstep -  1;
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  Widget controlsBuilder(context, details){
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        
        children: [
          Expanded(child: OutlinedButton(onPressed: details.onStepCancel, child: const Text("Back"))),
          const SizedBox(width: 10,),
          Expanded(child: ElevatedButton(onPressed: () {
            var provider = Provider.of<AppProvider>(context, listen: false);
            if(currentstep == 0){
              if(firstNameController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter your first name", context);
                return;
              }
              if(lastNameController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter you last name", context);
                return;
              }
              if(selectedLanguageValue.isEmpty){
                Utils.flushBarErrorMessage("Select Language", context);
                return;
              }
              if(referalCodeController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter Referal Code", context);
                return;
              }

              if(ownVehicleCheck){
                if(selectedVehicleType.isEmpty){
                  Utils.flushBarErrorMessage("Select Car Type", context);
                  return;
                }
                if(selectedVehicleMenufecturerType.isEmpty){
                  Utils.flushBarErrorMessage("Select Car Manufacturer Type", context);
                  return;
                }
                if(selectedVehicleModel.isEmpty){
                  Utils.flushBarErrorMessage("Select Car Manufacturer Type", context);
                  return;
                }
                if(lecencePlateController.text.isEmpty){
                  Utils.flushBarErrorMessage("Enter Plate Licence", context);
                  return;
                }
                if(selectedVehicleColor.isEmpty){
                  Utils.flushBarErrorMessage("Select Car Manufacturer Type", context);
                  return;
                }

                provider.localDriverUserModel.haveOwnVehicle = ownVehicleCheck;
                provider.localDriverUserModel.vehicleType = selectedVehicleType;
                provider.localDriverUserModel.vehicleManufacturer = selectedVehicleMenufecturerType;
                provider.localDriverUserModel.vehicleModel = selectedVehicleModel;
                provider.localDriverUserModel.vehiclePlate = lecencePlateController.text;
                provider.localDriverUserModel.vehicleColor = selectedVehicleColor;

              }else{

                provider.localDriverUserModel.haveOwnVehicle = ownVehicleCheck;
                provider.localDriverUserModel.vehicleType = "";
                provider.localDriverUserModel.vehicleManufacturer = "";
                provider.localDriverUserModel.vehicleModel = "";
                provider.localDriverUserModel.vehiclePlate = "";
                provider.localDriverUserModel.vehicleColor = "";
              }


              provider.localDriverUserModel.firstName = firstNameController.text;
              provider.localDriverUserModel.lastName = lastNameController.text;
              provider.localDriverUserModel.language = selectedLanguageValue;
              provider.localDriverUserModel.referralCode = referalCodeController.text;
             continueStep();
            }
            else if(currentstep == 1){
              if(dateofBirthController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter your date of birth", context);
                return;
              }
              if(drivingLicenceController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter your driving Licence", context);
                return;
              }

              provider.localDriverUserModel.dateOfBirth = dateofBirthController.text;
              provider.localDriverUserModel.drivingLicence = drivingLicenceController.text;
              continueStep();
            }
            else if(currentstep == 2){
              if(selectedYear.isEmpty){
                Utils.flushBarErrorMessage("Enter year of expiry", context);
                return;
              }
              if(selectedMonth.isEmpty){
                Utils.flushBarErrorMessage("Enter month of expiry", context);
                return;
              }
              if(selectedDay.isEmpty){
                Utils.flushBarErrorMessage("Enter Day of expiry", context);
                return;
              }
              if(image==null){
                Utils.flushBarErrorMessage("Upload driving lecence", context);
                return;
              }

              if(profileImg==null){
                Utils.flushBarErrorMessage("Upload profile photo", context);
                return;
              }

              if(vehicleRegistrationImg==null){
                Utils.flushBarErrorMessage("Upload vehicle registration photo", context);
                return;
              }

              if(vehicleImg==null){
                Utils.flushBarErrorMessage("Upload vehicle photo", context);
                return;
              }

              provider.localDriverUserModel.drivingLicenceExpiryYear = selectedYear;
              provider.localDriverUserModel.drivingLicenceExpiryMonth = selectedMonth;
              provider.localDriverUserModel.drivingLicenceExpiryDay = selectedDay;
              provider.localDriverUserModel.drivingLicenceExpiryDay = selectedDay;
              provider.localDriverUserModel.drivingLicenceimage= image!.path;
              provider.localDriverUserModel.profileimage= profileImg!.path;
              provider.localDriverUserModel.vehicleImage= vehicleImg!.path;
              provider.localDriverUserModel.vehicleRegistrationCertificate= vehicleRegistrationImg!.path;
              provider.localDriverUserModel.vehicleImage= vehicleImg!.path;
              continueStep();
            }
            else{
              if(selectedBillingValue.isEmpty){
                Utils.flushBarErrorMessage("Select Billing", context);
                return;
              }
              if(companyNameController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter company name", context);
                return;
              }
              if(addressController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter Address", context);
                return;
              }
              if(NZBNPlateController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter NZBN number", context);
                return;
              }
              if(gstNumberController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter GST number", context);
                return;
              }
              if(bankaccountholderController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter Bank account holder", context);
                return;
              }
              if(bankCodeController.text.isEmpty){
                Utils.flushBarErrorMessage("Enter Bank Code", context);
                return;
              }

              provider.localDriverUserModel.billType = selectedBillingValue;
              provider.localDriverUserModel.companyName = companyNameController.text;
              provider.localDriverUserModel.companyAddress = addressController.text;
              provider.localDriverUserModel.companyNzbn = NZBNPlateController.text;
              provider.localDriverUserModel.companyGst = gstNumberController.text;
              provider.localDriverUserModel.companyBankAccountHolderName = bankaccountholderController.text;
              provider.localDriverUserModel.companyBankCode = bankCodeController.text;
              continueStep();
            }

            //currentstep==4?Navigator.pushNamed(context, RoutesName.login):details.onStepContinue);
          }, child: Text(currentstep == 3 ? "Submit" : "Next"),)),
        ],
      ),
    );

  }

  final List<String> languageList = [
    'Select Language','English','Urdu','Farsi','Chines','arbi',
  ];
  final List<String> billingList = [
    'Select Billing','Company','Person','Other',
  ];
  final List<String> carTypeList = [
    'Select Car Type','Car'];
  final List<String> carMenuFecturerList = [
    'Select Manufacturer',
    'Toyota',
    'Volkswagen Group',
    'General Motors',
    'Ford',
    'Hyundai-Kia',
    'Nissan',
    'Honda',
    'BMW',
    'Daimler AG',
    'Fiat Chrysler Automobiles',
    'Tesla',
    'Subaru',
    'Mazda',
    'Mitsubishi Motors',
    'Volvo Cars',
    'Jaguar Land Rover',
    'Peugeot',
    'Renault',
    'Suzuki',
    'Audi',
  ];
  final List<String> carModelList = [
    'Select Model',
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2011',
    '2010',
    '2009',
    '2008',
    '2007',
    '2006',
    '2007',
    '2006',
  ];
  final List<String> dateofBirthYearList = [
    'Select Birth Year',
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
    '2016',
    '2015',
    '2014',
    '2013',
    '2012',
    '2011',
    '2010',
    '2009',
    '2008',
    '2007',
    '2006',
    '2007',
    '2006',
  ];
  final List<String> vehicleColorsList = [
    'Select Vehicle Color',
    'Black',
    'White',
    'Silver',
    'Gray',
    'Red',
    'Blue',
    'Green',
    'Brown',
    'Yellow',
    'Orange',
    'Purple',
    'Pink',
  ];
  final List<String> dateofBirthMonthList = [
    'Select Birth Month',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',

  ];
  final List<String> dateofBirthDayList = [
    'Select Birth Day',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];


  String selectedLanguageValue="Select Language";
  String selectedBillingValue="Select Billing";
  String selectedVehicleType="Select Car Type";
  String selectedVehicleMenufecturerType="Select Manufacturer";
  String selectedVehicleModel="Select Model";
  String selectedVehicleColor="Select Vehicle Color";
  String selectedYear="Select Birth Year";
  String selectedMonth="Select Birth Month";
  String selectedDay="Select Birth Day";

  bool isOpen = false;
  bool radioButtonSelected = false;
  bool widgetVisible = false;

  void toggleWidgetVisibility() {
    setState(() {
      widgetVisible = !widgetVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLoading=Provider.of<AuthProvider>(context,listen: true).isLoading;
    return SafeArea(
      child: Scaffold(
        body:  isLoading==true?const Center(child: CircularProgressIndicator(
          color: Colors.purple,
        ),):Padding(
          padding: const EdgeInsets.all(20),
          child: Stepper(
              type: StepperType.horizontal,
              currentStep: currentstep,
              margin: EdgeInsets.all(10),
              onStepContinue: continueStep,
              onStepCancel: cancelStep,
              controlsBuilder: controlsBuilder,
              elevation: 0,
              steps:  [
                Step(title: const Text(""),
                    content:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        const Text("Personal And Car Informations",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        TextFiledForText(
                          controller: firstNameController,
                          hint: 'First Name',
                          keyboardType: TextInputType.text,
                          onChange: (String ) {},),
                        SizedBox(height: 20,),
                        TextFiledForText(
                          controller: lastNameController,
                          hint: 'Last Name',
                          keyboardType: TextInputType.text,
                          onChange: (String ) {},),
                        SizedBox(height: 20,),
                        Container(
                          margin: const EdgeInsets.only(left: 20,right: 20),
                          width: double.infinity,
                          height: 43,
                          padding: const EdgeInsets.all(10),
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
                            offset: const Offset(0, 3),)],),
                        child:  DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Select Language',
                                    style: TextStyle(
                                        fontSize: 14,color: Colors.grey


                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: languageList
                                .map((item) =>
                                DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                                .toList(),
                            value: selectedLanguageValue,
                            onChanged: (value) {
                              setState(() {
                                selectedLanguageValue = value as String;
                              });
                            },


                          ),
                        ),),
                        SizedBox(height: 20,),
                        TextFiledForText(
                          controller: referalCodeController,
                          hint: 'Referal Code',
                          keyboardType: TextInputType.text,
                          onChange: (String ) {},),
                        SizedBox(height: 30,),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Checkbox(
                                value: ownVehicleCheck,
                                onChanged: (value) {
                                  setState(() {
                                    ownVehicleCheck = value!;
                                  });
                                },
                              ),
                              Text("Have You Own Vehicle?")
                            ],
                          ),
                        ),
                        Visibility(
                          visible: ownVehicleCheck,
                          child:  Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 20,right: 20),
                                width: double.infinity,
                                height: 43,
                                padding: const EdgeInsets.all(10),
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
                                      offset: const Offset(0, 3),)],),
                                child:  DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    isExpanded: true,
                                    hint: const Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Select Car Type',
                                            style: TextStyle(
                                                fontSize: 14,color: Colors.grey

                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    items: carTypeList
                                        .map((item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ))
                                        .toList(),
                                    value: selectedVehicleType,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedVehicleType = value as String;
                                      });
                                    },


                                  ),
                                ),),
                              SizedBox(height: 20,),
                              Container(
                                margin: const EdgeInsets.only(left: 20,right: 20),
                                width: double.infinity,
                                height: 43,
                                padding: const EdgeInsets.all(10),
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
                                      offset: const Offset(0, 3),)],),
                                child:  DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    isExpanded: true,
                                    hint: const Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Select Car Manufecturer Company',
                                            style: TextStyle(
                                                fontSize: 14,color: Colors.grey

                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    items: carMenuFecturerList
                                        .map((item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ))
                                        .toList(),
                                    value: selectedVehicleMenufecturerType,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedVehicleMenufecturerType = value as String;
                                      });
                                    },


                                  ),
                                ),),
                              SizedBox(height: 20,),
                              Container(
                                margin: const EdgeInsets.only(left: 20,right: 20),
                                width: double.infinity,
                                height: 43,
                                padding: const EdgeInsets.all(10),
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
                                      offset: const Offset(0, 3),)],),
                                child:  DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    isExpanded: true,
                                    hint: const Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Car Model',
                                            style: TextStyle(
                                                fontSize: 14,color: Colors.grey

                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    items: carModelList
                                        .map((item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ))
                                        .toList(),
                                    value: selectedVehicleModel,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedVehicleModel = value as String;
                                      });
                                    },


                                  ),
                                ),),
                              SizedBox(height: 20,),
                              TextFiledForText(
                                controller: lecencePlateController,
                                hint: 'Licence Plate - TTP 717',
                                keyboardType: TextInputType.text,
                                onChange: (String ) {},),
                              SizedBox(height: 20,),
                              Container(
                                margin: const EdgeInsets.only(left: 20,right: 20),
                                width: double.infinity,
                                height: 43,
                                padding: const EdgeInsets.all(10),
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
                                      offset: const Offset(0, 3),)],),
                                child:  DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    isExpanded: true,
                                    hint: const Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Vehicle Color',
                                            style: TextStyle(
                                                fontSize: 14,color: Colors.grey

                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    items: vehicleColorsList
                                        .map((item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ))
                                        .toList(),
                                    value: selectedVehicleColor,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedVehicleColor = value as String;
                                      });
                                    },


                                  ),
                                ),),

                            ],
                          )
                        ),

                      ],
                    ),isActive: currentstep>=0,state: currentstep>=0? StepState.indexed:StepState.disabled),
                Step(title: Text(""),
                    content:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10,),
                     const Text("Identification",style: TextStyle(fontWeight: FontWeight.bold),),
                     const Text("Your date if birth and licence details will be kept private.",style: TextStyle(fontWeight: FontWeight.normal),),
                    const SizedBox(height: 20,),
                    TextFiledForText(
                      controller: dateofBirthController,
                      hint: '12/01/1996',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),
                    const SizedBox(height: 20,),
                    TextFiledForText(
                      controller: drivingLicenceController,
                      hint: 'Driving Licence -AB 123456',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),

                  ],
                ),isActive: currentstep>=1,state: currentstep>=0? StepState.indexed:StepState.disabled),
                Step(title: Text(""), content:
                 Column(
                  children: [
                    const SizedBox(height: 10,),
                    const Text("Documentations",style: TextStyle(fontWeight: FontWeight.bold),),
                    const Text("We're legally required to ask you for some documents to sign up you as driver. Documents scans and quality photos are accepted",style: TextStyle(fontWeight: FontWeight.normal),),
                    const SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Color(0xFFffffff),
                       boxShadow: const [
                         BoxShadow(
                           color: Colors.grey,
                           blurRadius: 1.0, // soften the shadow
                           spreadRadius: 0.1, //extend the shadow
                           offset: Offset(
                             1.0, // Move to right 5  horizontally
                             0.0, // Move to bottom 5 Vertically
                           ),
                         )
                       ],
                     ),
                      child:  Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(child: Text("Driving Lecence")),
                                Expanded(child: Text("Required*",textAlign: TextAlign.end,style: TextStyle(color: Colors.red),)),
                              ],
                            ),
                            SizedBox(height: 20,),
                            const Align(
                                alignment: Alignment.topLeft,
                                child: Text("Expires",style: TextStyle(fontWeight: FontWeight.bold),)),
                            Container(
                              margin: const EdgeInsets.only(left: 20,right: 20),
                              width: double.infinity,
                              height: 43,
                              padding: const EdgeInsets.all(10),
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
                                    offset: const Offset(0, 3),)],),
                              child:  DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  hint: const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Year',
                                          style: TextStyle(
                                              fontSize: 14,color: Colors.grey

                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: dateofBirthYearList
                                      .map((item) =>
                                      DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                      .toList(),
                                  value: selectedYear,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedYear = value as String;
                                    });
                                  },


                                ),
                              ),),
                            SizedBox(height: 20,),
                            Container(
                              margin: const EdgeInsets.only(left: 20,right: 20),
                              width: double.infinity,
                              height: 43,
                              padding: const EdgeInsets.all(10),
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
                                    offset: const Offset(0, 3),)],),
                              child:  DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  hint: const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Month',
                                          style: TextStyle(
                                              fontSize: 14,color: Colors.grey

                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: dateofBirthMonthList
                                      .map((item) =>
                                      DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                      .toList(),
                                  value: selectedMonth,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedMonth = value as String;
                                    });
                                  },


                                ),
                              ),),
                            SizedBox(height: 20,),
                            Container(
                              margin: const EdgeInsets.only(left: 20,right: 20),
                              width: double.infinity,
                              height: 43,
                              padding: const EdgeInsets.all(10),
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
                                    offset: const Offset(0, 3),)],),
                              child:  DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  hint: const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Day',
                                          style: TextStyle(
                                              fontSize: 14,color: Colors.grey

                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: dateofBirthDayList
                                      .map((item) =>
                                      DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                      .toList(),
                                  value: selectedDay,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedDay = value as String;
                                    });
                                  },


                                ),
                              ),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                                  ),
                                  child: ClipOval(
                                    child: image!=null ? Image.file(image!,fit: BoxFit.cover,):Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Image.asset(AppAssets.pickImageIcon,height: 5,width: 5,),
                                    ),
                                  ),
                                  
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    pickImage();

                                  },
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.30,
                                      height: MediaQuery.of(context).size.height*0.06,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child:  const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.add,color: Colors.white,),
                                          ),
                                          SizedBox(width: 5,),
                                          Expanded(child: Text("Upload File",style: TextStyle(color: Colors.white),))
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )


                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFffffff),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 0.1, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child:  Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(child: Text("Profile Photo")),
                                Expanded(child: Text("Required*",textAlign: TextAlign.end,style: TextStyle(color: Colors.red),)),
                              ],
                            ),
                            SizedBox(height: 20,),
                            const Align(
                                alignment: Alignment.topLeft,
                                child: Text("Upload a pic of your face with clear background ",style: TextStyle(fontWeight: FontWeight.bold),)),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white
                                  ),
                                  child: ClipOval(
                                    child: profileImg!=null ? Image.file(profileImg!,fit: BoxFit.cover,):Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Image.asset(AppAssets.pickImageIcon,height: 5,width: 5,),
                                    ),
                                  )),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    pickProfileImage();
                                  },
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.30,
                                      height: MediaQuery.of(context).size.height*0.06,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.add,color: Colors.white,),
                                          ),
                                          SizedBox(width: 5,),
                                          Expanded(child: Text("Upload File",style: TextStyle(color: Colors.white),))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFffffff),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 0.1, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child:  Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(child: Text("Vehcle Registration")),
                                Expanded(child: Text("Required*",textAlign: TextAlign.end,style: TextStyle(color: Colors.red),)),
                              ],
                            ),
                            SizedBox(height: 20,),

                            const Align(
                                alignment: Alignment.topLeft,
                                child: Text("Upload a vehicle reistration image ",style: TextStyle(fontWeight: FontWeight.bold),)),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white
                                    ),
                                    child: ClipOval(
                                      child: vehicleRegistrationImg!=null ? Image.file(vehicleRegistrationImg!,fit: BoxFit.cover,):Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Image.asset(AppAssets.pickImageIcon,height: 5,width: 5,),
                                      ),
                                    )),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    pickVehicleRegImage();
                                  },
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.30,
                                      height: MediaQuery.of(context).size.height*0.06,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.add,color: Colors.white,),
                                          ),
                                          SizedBox(width: 5,),
                                          Expanded(child: Text("Upload File",style: TextStyle(color: Colors.white),))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFffffff),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 0.1, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
                      child:  Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(child: Text("Vehcle Picture")),
                                Expanded(child: Text("Required*",textAlign: TextAlign.end,style: TextStyle(color: Colors.red),)),
                              ],
                            ),
                            SizedBox(height: 20,),
                            const Align(
                                alignment: Alignment.topLeft,
                                child: Text("Vehcle Pic should show licence plate",style: TextStyle(fontWeight: FontWeight.bold),)),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white
                                    ),
                                    child: ClipOval(
                                      child: vehicleImg!=null ? Image.file(vehicleImg!,fit: BoxFit.cover,):Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Image.asset(AppAssets.pickImageIcon,height: 5,width: 5,),
                                      ),
                                    )),
                                Spacer(),
                                GestureDetector(
                                  onTap: (){
                                    pickVehicleImage();
                                  },
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*0.30,
                                      height: MediaQuery.of(context).size.height*0.06,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: Icon(Icons.add,color: Colors.white,),
                                          ),
                                          SizedBox(width: 5,),
                                          Expanded(child: Text("Upload File",style: TextStyle(color: Colors.white),))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),


                  ],
                ),isActive: currentstep>=2,state: currentstep>=0? StepState.indexed:StepState.disabled),
                Step(title: const Text(""), content:  Column(
                  children: [
                    SizedBox(height: 20,),
                    const Text("Payment Details",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    const Text("We need your payment detail to pay you",style: TextStyle(fontWeight: FontWeight.normal),),
                    SizedBox(height: 20,),
                    Container(
                      margin: const EdgeInsets.only(left: 20,right: 20),
                      width: double.infinity,
                      height: 43,
                      padding: const EdgeInsets.all(10),
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
                            offset: const Offset(0, 3),)],),
                      child:  DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: const Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Bill Type - Company',
                                  style: TextStyle(
                                      fontSize: 14,color: Colors.grey


                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: billingList
                              .map((item) =>
                              DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                              .toList(),
                          value: selectedBillingValue,
                          onChanged: (value) {
                            setState(() {
                              selectedBillingValue = value as String;
                            });
                          },


                        ),
                      ),),
                    SizedBox(height: 20,),
                    TextFiledForText(
                      controller: companyNameController,
                      hint: 'Company Name',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),
                    SizedBox(height: 20,),
                    TextFiledForText(
                      controller: addressController,
                      hint: 'Address',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),
                    SizedBox(height: 20,),
                    TextFiledForText(
                      controller: NZBNPlateController,
                      hint: 'NZBN',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),
                    SizedBox(height: 20,),
                    TextFiledForText(
                      controller: gstNumberController,
                      hint: 'GST Number',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),
                    SizedBox(height: 20,),
                    TextFiledForText(
                      controller: bankaccountholderController,
                      hint: 'Bank Account Holder Name',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),
                    SizedBox(height: 20,),
                    TextFiledForText(
                      controller: bankCodeController,
                      hint: 'Bank Code',
                      keyboardType: TextInputType.text,
                      onChange: (String ) {},),

                  ],),isActive: currentstep>=3,state: currentstep>=0? StepState.indexed:StepState.disabled),

              ]),
        ),


      ),
    );
  }
  void storeData()async{
    final ap=Provider.of<AuthProvider>(context,listen: false);
    DriverUserModel userModel=DriverUserModel(
        userId:"",
        email: ap.localDriverUserModel.email,
        city: "",
        phoneNumber: "",
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        language: selectedLanguageValue,
        referralCode: referalCodeController.text,
        haveOwnVehicle: ownVehicleCheck,
        vehicleType: selectedVehicleType=="Select Car Type" ? "" : selectedVehicleType,
        vehicleManufacturer: selectedVehicleMenufecturerType=="Select Manufacturer" ? "" : selectedVehicleMenufecturerType,
        vehicleModel: selectedVehicleModel=="Select Model" ? "" : selectedVehicleModel,
        vehiclePlate: lecencePlateController.text,
        vehicleColor: selectedVehicleColor=="Select Vehicle Color" ? "" : selectedVehicleColor,
        dateOfBirth: dateofBirthController.text,
        drivingLicence: drivingLicenceController.text,
        drivingLicenceExpiryYear: selectedYear=="Select Birth Year" ? "" : selectedYear,
        drivingLicenceExpiryMonth: selectedMonth=="Select Birth Month" ? "" : selectedMonth,
        drivingLicenceExpiryDay: selectedDay=="Select Birth Day" ? "" : selectedDay,
        drivingLicenceimage: "",
        profileimage: "",
        vehicleRegistrationCertificate: "",
        vehicleImage: "",
        billType: selectedBillingValue=="Select Billing" ? "" : selectedBillingValue,
        companyName: companyNameController.text,
        companyAddress: addressController.text,
        companyNzbn: NZBNPlateController.text,
        companyGst: gstNumberController.text,
        companyBankAccountHolderName: bankaccountholderController.text,
        companyBankCode: bankCodeController.text,
        status: "Pending",
        userType: "Driver",
        accountCreationDate: ""
    );
    if(image!=null && profileImg!=null && vehicleRegistrationImg!=null && vehicleImg!=null){
      ap.saveUserDataToFirebase(
          context: context,
          driverUserModel: userModel,
          profilePic: profileImg!,
          vehicleRegistrationCertificate: vehicleRegistrationImg!,
          vehicleImage: vehicleImg!,
          drivingLicenceimage: image!,
          onSucess: (){

            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>DriverDashBoad()), (route) => false);
          });
    }
  }
}
