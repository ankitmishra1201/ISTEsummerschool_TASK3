import 'package:flutter/material.dart';
import 'home.dart';
import 'world_weather.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}


class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldWeather> locations=[
    WorldWeather(url:'London' ,Location: 'London'),
    WorldWeather(url:'Bangalore',Location: 'Bangalore'),
    WorldWeather(url:'Mumbai',Location: 'Mumbai'),

    WorldWeather(url:'New York' ,Location: 'New York'),
    WorldWeather(url:'Belgium' ,Location: 'Belgium'),



  ];

  void updatetime(index) async {
    WorldWeather instance = locations[index];
    await instance.fetchData();
    Navigator.pop(context, {
      'Location': instance.Location,
      'time':instance.time,
      'humidity':instance.humidity,
      'precipitate':instance.precipitate,
      'pressure':instance.pressure,
      'direction':instance.direction,
      'wind':instance.wind,
      'visibility':instance.visibility,
      'temp':instance.temp
    });
  }

    @override
    void initState(){
      super.initState();


  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text('Choose Location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  onTap: (){
                    updatetime(index);
                    print(locations[index].Location);
                  },
                  title:Text(locations[index].Location.toString()),

                ),
              );
            }
        ),

      );
    }
  }

