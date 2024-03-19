
import 'package:apigetxusingmvc/apiGetx/service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


import 'model.dart';

class Newcontroller extends GetxController {
  var newmodels = <UserModels>[].obs;

  getdata() async {
    try {
      var data = await Newservice().fetchdata();
      if (data != null) {
        newmodels.value = data;
      }
    } catch (e) {
      Get.snackbar("title", "$e");
    }
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }
}




///"https://fakestoreapi.com/carts?userId=1";