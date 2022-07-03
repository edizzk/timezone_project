import 'dart:convert';

List<TimeZoneModel> timezoneModelFromJson(String str) => List<TimeZoneModel>.from(json.decode(str).map((x)=>TimeZoneModel(timezone: x)));

class TimeZoneModel {

  String timezone;

  TimeZoneModel({required this.timezone});
}