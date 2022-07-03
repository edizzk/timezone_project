import 'dart:convert';

String dayFormatter(DateTime date) {
  dynamic dayData =
      '{ "1" : "Pazartesi", "2" : "Salı", "3" : "Çarşamba", "4" : "Perşembe", "5" : "Cuma", "6" : "Cumartesi", "7" : "Pazar" }';

  return json.decode(dayData)['${date.weekday}'];
}

String monthFormatter(DateTime date) {

  dynamic monthData =
      '{ "1" : "Ocak", "2" : "Şubat", "3" : "Mart", "4" : "Nisan", "5" : "Mayıs", "6" : "Haziran", "7" : "Temmuz", "8" : "Ağustos", "9" : "Eylül", "10" : "Ekim", "11" : "Kasım", "12" : "Aralık" }';

  return json.decode(monthData)['${date.month}'];
}