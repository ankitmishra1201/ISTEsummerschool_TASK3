import 'package:dem2_app/choose_location.dart';
import 'package:dem2_app/loading.dart';
import 'package:flutter/material.dart';
import 'home.dart';
void main()=> runApp(MaterialApp(
  initialRoute: '/loading',
  routes: {


    '/home':(context)=> Home(),
    '/location':(context)=> ChooseLocation(),
    '/loading':(context)=>Loading(),

  },
));


