import 'package:get/get.dart';
import 'package:timezone_project/model/timezone_model.dart';

import '../repositories/timezone_repo.dart';

class TimeZoneController extends GetxController{

  var timezoneList = <TimeZoneModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getAllProducts();
  }

  Future<void> getAllProducts() async{
    var product = await TimeZoneRepository().fetchProducts();
    if(product != null)
    {
      timezoneList.value = product;
      isLoading.value = false;
    }
    else{
      isLoading.value = true;
    }
  }


}