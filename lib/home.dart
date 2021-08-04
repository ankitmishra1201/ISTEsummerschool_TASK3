import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'world_weather.dart';
import 'choose_location.dart';
void main()=> runApp(MaterialApp(
  home: Home(),

));





class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data ={};

 // var temp;
  //var location;
  //var time;
  //var humidity;
  //var visibility;
  //var precipitate;
  //var pressure;
  //var direction;
  //var wind;






  //Future fetchData() async {
    //http.Response response=await http.get(Uri.parse('http://api.weatherapi.com/v1/current.json?key=ac42c5000c9c43cfa93120454210408&q=Manipal&aqi=no'));
    //var Results=json.decode(response.body);
    //setState(() {
      //this.temp=Results['current']['temp_c'];
      //this.location=Results['location']['name'];
      //this.time=Results['location']['localtime'].substring(11,16);
      //this.wind=Results['current']['wind_kph'];
      //this.direction=Results['current']['wind_dir'];
      //this.pressure=Results['current']['pressure_in'];
      //this.precipitate=Results['current']['precip_mm'];
      //this.visibility=Results['current']['vis_km'];
      //this.humidity=Results['current']['humidity'];
    //});
    //print(Results);
  //}





  @override

  Widget build(BuildContext context) {
    //data=data.isNotEmpty?data:ModalRoute.of(context).settings.arguments;
    return Scaffold(

      backgroundColor: Colors.black54,
      body: SafeArea(

        child: Container(
          child: Center(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                IconButton(
                  onPressed:() async{
                    dynamic result=await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data={
                        'Location': result['Location'],
                        'time':result['time'],
                        'humidity':result['humidity'],
                        'precipitate':result['precipitate'],
                        'pressure':result['pressure'],
                        'direction':result['direction'],
                        'wind':result['wind'],
                        'visibility':result['visibility'],
                        'temp':result['temp'],

                      };

                    });
                  },
                  icon: Icon(Icons.location_on_outlined,
                    color: Colors.white,
                  ),

                ),

                SizedBox(height: 130.0),


                Text(
                  data['Location'].toString(),
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  data['time'].toString(),
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,


                  ),
                ),

                SizedBox(
                  height: 40.0,
                ),
                Text("Current Temperature",
                  style:TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(data['temp'].toString() +"\u2103",
                  style:TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 200.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                    Column(
                      children: <Widget>[
                        Text("HUMIDITY",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text(data['humidity'].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                          ),),


                      ],

                    ),
                    Text("|",
                      style: TextStyle(
                        fontSize: 80.0,
                        color: Colors.white,
                      ),),
                    Column(
                      children: <Widget>[
                        Text("WIND SPEED",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text(data['wind'].toString()+"kph",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                          ),),
                      ],
                    ),
                    Text("|",
                      style: TextStyle(
                        fontSize: 80.0,
                        color: Colors.white,
                      ),),
                    Column(
                      children: <Widget>[
                        Text("VISIBILITY",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text(data['visibility'].toString()+'Km',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                          ),),


                      ],

                    ),

                  ],


                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                    Column(
                      children: <Widget>[
                        Text("PRESSURE",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text(data['pressure'].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                          ),),


                      ],

                    ),
                    Text("|",
                      style: TextStyle(
                        fontSize: 80.0,
                        color: Colors.white,
                      ),),
                    Column(
                      children: <Widget>[
                        Text("WIND DIR...",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text(data['direction'].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                          ),),
                      ],
                    ),
                    Text("|",
                      style: TextStyle(
                        fontSize: 80.0,
                        color: Colors.white,
                      ),),
                    Column(
                      children: <Widget>[
                        Text("PRECIPIT..",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text(data['precipitate'].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0
                          ),),


                      ],

                    ),

                  ],


                ),

              ],
            ),
          ),



        ),
      ),
    );

  }
}
