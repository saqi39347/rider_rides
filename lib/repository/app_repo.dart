class AppRepo{


  /*Future<ApiResponse> fetchTaskTypes(UserModel userModel)async{
    ApiResponse apiResponse;
    var response = await http.get(Uri.parse(IPConfigurations.fetchTaskTypeApi),
        headers: {
          'Authorization': 'Bearer ${userModel.authToken}',
        });
    if(response.body.isNotEmpty){
      apiResponse = ApiResponse(response,null,null);
      return apiResponse;
    }else{
      apiResponse = ApiResponse.withError("Error");
      return apiResponse;
    }
  }
  Future<ApiResponse> submitNewTask(UserModel userModel, TaskModel taskModel)async{

    var json = jsonEncode(taskModel.taskItemsList.map((e) => e.toJsonAttr()).toList());

    ApiResponse apiResponse;
    var request = http.MultipartRequest("POST", Uri.parse(IPConfigurations.submitNewTaskApi));
    request.headers['Authorization'] = 'Bearer ${userModel.authToken}';

    request.fields['name'] = taskModel.title.toString();
    request.fields['description'] = taskModel.description.toString();
    request.fields['userId'] = userModel.userId.toString();
    if(taskModel.mosqueModel.mosqueId != -1){
      request.fields['mosqueId'] = taskModel.mosqueModel.mosqueId.toString();
    }else{
      request.fields['mosque_name'] = taskModel.mosqueModel.mosqueId == -1 ? taskModel.mosqueModel.mosqueName.toString() : "";
      request.fields['mosque_location'] = taskModel.mosqueModel.mosqueId == -1 ? taskModel.mosqueModel.mosqueLocation.toString() : "";
    }
    request.fields['status'] = "0";
    request.fields['taskcategoryId'] = taskModel.taskCategoryModel.id.toString();
    if(taskModel.taskTypeModel.id != 0){
      request.fields['tasktypeId'] = taskModel.taskTypeModel.id.toString();
    }
    request.fields['tasktypeother'] = taskModel.otherType.isEmpty ? "" : taskModel.otherType.toString();
    request.fields['items'] = json;


    if(taskModel.image.isNotEmpty){
      request.files.add(await http.MultipartFile.fromPath("image[]", taskModel.image,));
    }
    if(taskModel.audio.isNotEmpty) {
      request.files.add(await http.MultipartFile.fromPath("audio[]", taskModel.audio,));
    }
    if(taskModel.video.isNotEmpty) {
      request.files.add(await http.MultipartFile.fromPath("video[]", taskModel.video,));
    }
    if(taskModel.mosqueModel.mosqueId == -1) {
      request.files.add(await http.MultipartFile.fromPath("mosque_image", taskModel.mosqueModel.mosqueImage,));
    }

    //print("name: ${taskModel.title}\ndescription: ${taskModel.description}\nuserId: ${userModel.userId}\nmosqueId: ${taskModel.mosqueModel.mosqueId == 0 ? "" : taskModel.mosqueModel.mosqueId}\nstatus: 0\ntaskcategoryId: ${taskModel.taskCategoryModel.id}\ntasktypeId: ${taskModel.taskTypeModel.id == 0 ? "" : taskModel.taskTypeModel.id}\ntasktypeother: ${taskModel.otherType.isEmpty ? "" : taskModel.otherType}\nmosque_name: ${taskModel.mosqueModel.mosqueId == -1 ? taskModel.mosqueModel.mosqueName.toString() : ""}\nmosque_location: ${taskModel.mosqueModel.mosqueId == -1 ? taskModel.mosqueModel.mosqueLocation.toString() : ""}\nimage: ${taskModel.image}\naudio: ${taskModel.audio}\nvideo: ${taskModel.video}\nmosque_image: ${taskModel.mosqueModel.mosqueImage}");

    var response = await request.send();
    if(response!=null){
      apiResponse = ApiResponse(await http.Response.fromStream(response), response ,null);
      return apiResponse;
    }else{
      apiResponse = ApiResponse.withError("Error");
      return apiResponse;
    }
  }*/

}