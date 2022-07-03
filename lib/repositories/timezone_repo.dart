import '../model/timezone_model.dart';
import '../utils/constants.dart';

import 'package:http/http.dart' as http;

class TimeZoneRepository{

  static var client = http.Client();

  Future<List<TimeZoneModel>?> fetchProducts() async{
    var response = await client.get(Uri.parse(timezoneUrl));
    if(response.statusCode == 200)
    {
      return timezoneModelFromJson(response.body);
    }
    else
    {
      return null;
    }
  }

}