import 'package:get/get.dart';
import 'package:timezone_project/model/timezone_model.dart';

import '../repositories/timezone_repo.dart';

class TimeZoneController extends GetxController{

  var timezoneList = <TimeZoneModel>[].obs;
  var searchTimezoneList = <TimeZoneModel>[].obs;
  var isLoading = true.obs;
  var isSearchEmpty = true.obs;

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

  void onTextChanged(String text){
    isSearchEmpty.value = false;
    searchTimezoneList.clear();
    if(text.isEmpty){
      for (var element in timezoneList) {
        searchTimezoneList.add(element);
      }
    }
    else{
      for (var element in timezoneList) {
        if(element.timezone.toLowerCase().contains(text))
        {
          searchTimezoneList.add(element);
        }
      }
    }
  }

}