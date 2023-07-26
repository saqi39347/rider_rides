import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rides_driver_app/models/driver_user_model.dart';

import '../repository/app_repo.dart';

class AppProvider with ChangeNotifier{
  AppRepo appRepo;
  AppProvider({required this.appRepo});

  bool progress = false;
  DriverUserModel localDriverUserModel = DriverUserModel.getInstance();




  /// Task Providers
  /*Future<ResponseModel> fetchTaskCategories(UserModel userModel)async{
    ResponseModel responseModel;
    ApiResponse apiResponse = await appRepo.fetchTaskCategories(userModel);
    var parsedResponse = jsonDecode(apiResponse.response!.body);
    if (apiResponse.response != null && apiResponse.response!.statusCode == 200) {
      taskCategoryList.clear();
      taskCategoryList.add(TaskCategoryModel(id: 0, title: "Please Select Category", description: ""));
      parsedResponse["data"].forEach((element) {
        taskCategoryList.add(TaskCategoryModel.fromJson(element));
      });

      responseModel = ResponseModel(parsedResponse["status"], parsedResponse["message"]);
    } else {
      String errorMessage = parsedResponse["error"][0];
      responseModel = ResponseModel(parsedResponse["status"], errorMessage);
    }

    notifyListeners();
    return responseModel;
  }*/

  progressReset(){
    progress = false;
    notifyListeners();
  }
  notifyToProvider(){
    notifyListeners();
  }
}