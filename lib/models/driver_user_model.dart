class DriverUserModel {
  String userId = "";
  String city = "";
  String email = "";
  String phoneNumber = "";
  String firstName = "";
  String lastName = "";
  String language = "";
  String referralCode = "";
  bool haveOwnVehicle = false;
  String vehicleType = "";
  String vehicleManufacturer = "";
  String vehicleModel = "";
  String vehiclePlate = "";
  String vehicleColor = "";
  String dateOfBirth = "";
  String drivingLicence = "";
  String drivingLicenceExpiryYear = "";
  String drivingLicenceExpiryMonth = "";
  String drivingLicenceExpiryDay = "";
  String drivingLicenceimage = "";
  String profileimage = "";
  String vehicleRegistrationCertificate = "";
  String vehicleImage = "";
  String billType = "";
  String companyName = "";
  String companyAddress = "";
  String companyNzbn = "";
  String companyGst = "";
  String companyBankAccountHolderName = "";
  String companyBankCode = "";
  String status = ""; // Active, Pending, Disable, Suspend, Deleted
  String userType = ""; // Driver, User, Admin
  String accountCreationDate = "";

  DriverUserModel({
      required this.userId,
      required this.city,
      required this.email,
      required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.language,
      required this.referralCode,
      required this.haveOwnVehicle,
      required this.vehicleType,
      required this.vehicleManufacturer,
      required this.vehicleModel,
      required this.vehiclePlate,
      required this.vehicleColor,
      required this.dateOfBirth,
      required this.drivingLicence,
      required this.drivingLicenceExpiryYear,
      required this.drivingLicenceExpiryMonth,
      required this.drivingLicenceExpiryDay,
      required this.drivingLicenceimage,
      required this.profileimage,
      required this.vehicleRegistrationCertificate,
      required this.vehicleImage,
      required this.billType,
      required this.companyName,
      required this.companyAddress,
      required this.companyNzbn,
      required this.companyGst,
      required this.companyBankAccountHolderName,
      required this.companyBankCode,
      required this.status,
      required this.userType,
      required this.accountCreationDate});

  DriverUserModel.getInstance();


  factory DriverUserModel.fromMap(Map<String,dynamic> map){
    return DriverUserModel(
        userId:map['userId'],
        city: map['city'],
        email: map['email'],
        phoneNumber: map['phoneNumber'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      language: map['language'],
      referralCode: map['referralCode'],
      haveOwnVehicle: map['haveOwnVehicle'],
      vehicleType: map['vehicleType'],
      vehicleManufacturer: map['vehicleManufacturer'],
      vehicleModel: map['vehicleModel'],
      vehiclePlate: map['vehiclePlate'],
      vehicleColor: map['vehicleColor'],
      dateOfBirth: map['dateOfBirth'],
      drivingLicence: map['drivingLicence'],
      drivingLicenceExpiryYear: map['drivingLicenceExpiryYear'],
      drivingLicenceimage: map['drivingLicenceimage'],
      profileimage: map['profileimage'],
      vehicleRegistrationCertificate: map['vehicleRegistrationCertificate'],
      vehicleImage: map['vehicleImage'],
      billType: map['billType'],
      companyName: map['companyName'],
      companyAddress: map['companyAddress'],
      companyNzbn: map['companyNzbn'],
      companyGst: map['companyGst'],
      companyBankAccountHolderName: map['companyBankAccountHolderName'],
      companyBankCode: map['companyBankCode'],
      status: map['status'],
      userType: map['userType'],
      accountCreationDate: map['accountCreationDate'],
      drivingLicenceExpiryMonth: map['drivingLicenceExpiryMonth'],
      drivingLicenceExpiryDay: map['drivingLicenceExpiryDay'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (userId.isNotEmpty) "userId": userId,
      if (userId.isNotEmpty) "city": city,
      if (userId.isNotEmpty) "email": email,
      if (userId.isNotEmpty) "phoneNumber": phoneNumber,
      if (userId.isNotEmpty) "firstName": firstName,
      if (userId.isNotEmpty) "lastName": lastName,
      if (userId.isNotEmpty) "language": language,
      if (userId.isNotEmpty) "referralCode": referralCode,
      if (userId.isNotEmpty) "haveOwnVehicle": haveOwnVehicle,
      if (userId.isNotEmpty) "vehicleType": vehicleType,
      if (userId.isNotEmpty) "vehicleManufacturer": vehicleManufacturer,
      if (userId.isNotEmpty) "vehicleModel": vehicleModel,
      if (userId.isNotEmpty) "vehiclePlate": vehiclePlate,
      if (userId.isNotEmpty) "vehicleColor": vehicleColor,
      if (userId.isNotEmpty) "dateOfBirth": dateOfBirth,
      if (userId.isNotEmpty) "drivingLicence": drivingLicence,
      if (userId.isNotEmpty) "drivingLicenceExpiryYear": drivingLicenceExpiryYear,
      if (userId.isNotEmpty) "drivingLicenceExpiryMonth": drivingLicenceExpiryMonth,
      if (userId.isNotEmpty) "drivingLicenceExpiryDay": drivingLicenceExpiryDay,
      if (userId.isNotEmpty) "drivingLicenceimage": drivingLicenceimage,
      if (userId.isNotEmpty) "profileimage": profileimage,
      if (userId.isNotEmpty) "vehicleRegistrationCertificate": vehicleRegistrationCertificate,
      if (userId.isNotEmpty) "vehicleImage": vehicleImage,
      if (userId.isNotEmpty) "billType": billType,
      if (userId.isNotEmpty) "companyName": companyName,
      if (userId.isNotEmpty) "companyAddress": companyAddress,
      if (userId.isNotEmpty) "companyNzbn": companyNzbn,
      if (userId.isNotEmpty) "companyGst": companyGst,
      if (userId.isNotEmpty) "companyBankAccountHolderName": companyBankAccountHolderName,
      if (userId.isNotEmpty) "companyBankCode": companyBankCode,
      if (userId.isNotEmpty) "status": status,
      if (userId.isNotEmpty) "userType": userType,
      if (userId.isNotEmpty) "accountCreationDate": accountCreationDate,
    };
  }

  Map<String,dynamic>toMap(){
    return{
      "userId":userId,
      "city": city,
      "email": email,
      "phoneNumber": phoneNumber,
      "firstName": firstName,
      "lastName": lastName,
      "language": language,
      "referralCode": referralCode,
      "haveOwnVehicle": haveOwnVehicle,
      "vehicleType": vehicleType,
      "vehicleManufacturer": vehicleManufacturer,
      "vehicleModel": vehicleModel,
      "vehiclePlate": vehiclePlate,
      "vehicleColor": vehicleColor,
      "dateOfBirth": dateOfBirth,
      "drivingLicence": drivingLicence,
      "drivingLicenceExpiryYear": drivingLicenceExpiryYear,
      "drivingLicenceimage": drivingLicenceimage,
      "profileimage": profileimage,
      "vehicleRegistrationCertificate": vehicleRegistrationCertificate,
      "vehicleImage": vehicleImage,
      "billType": billType,
      "companyName": companyName,
      "companyAddress": companyAddress,
      "companyNzbn": companyNzbn,
      "companyGst": companyGst,
      "companyBankAccountHolderName": companyBankAccountHolderName,
      "companyBankCode": companyBankCode,
      "status": status,
      "userType": userType,
      "accountCreationDate": accountCreationDate,
      "drivingLicenceExpiryMonth": drivingLicenceExpiryMonth,
      "drivingLicenceExpiryDay": drivingLicenceExpiryDay,

    };
  }
}