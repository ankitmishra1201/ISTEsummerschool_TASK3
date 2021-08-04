

import 'package:dem2_app/world_weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time='Loading';

  void setupWorldTime() async{
    WorldWeather instance = WorldWeather(
        Location:'London', url:'London');
    await instance.fetchData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'Location': instance.Location,
      'time':instance.time,
      'humidity':instance.humidity,
      'precipitate':instance.precipitate,
      'pressure':instance.pressure,
      'direction':instance.direction,
      'wind':instance.wind,
      'visibility':instance.visibility,
      'temp':instance.temp,
    }
    );

  }


  @override
  void initState(){
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Center(
        child:SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),


      ),
    );

  }
}
