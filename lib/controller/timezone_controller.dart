import 'package:get/get.dart';
import 'package:timezone_project/model/timezone_model.dart';

class TimeZoneController extends GetxController{

  var timezoneList = <TimeZoneModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

}