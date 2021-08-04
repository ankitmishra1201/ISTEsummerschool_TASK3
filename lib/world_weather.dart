import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldWeather {
  String?Location;

  String?url;
  bool?isdaytime;
  var temp;
  var location;
  var time;
  var humidity;
  var visibility;
  var precipitate;
  var pressure;
  var direction;
  var wind;

  WorldWeather({this.Location, this.url});


  Future<void> fetchData() async {
    Response response = await get(Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=ac42c5000c9c43cfa93120454210408&q=$url&aqi=no'));
    Map data = json.decode(response.body);

      this.temp = data['current']['temp_c'];
      this.location = data['location']['name'];
      this.time = data['location']['localtime'].substring(11,16);
      this.wind = data['current']['wind_kph'];
      this.direction = data['current']['wind_dir'];
      this.pressure = data['current']['pressure_in'];
      this.precipitate = data['current']['precip_mm'];
      this.visibility = data['current']['vis_km'];
      this.humidity = data['current']['humidity'];

    print(data);
  }
}