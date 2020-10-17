import 'dart:async';
import 'package:alarm/screens/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alarm/main.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    super.initState();
  }

  void _navigateToHome(){ Navigator.push(
      context , MaterialPageRoute(
    builder:(BuildContext context)=> MyApp(),
  )
  );
  }
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.blueGrey,
      seconds: 5,
      navigateAfterSeconds: new MyApp(),
      title: new Text('Clock',textScaleFactor: 2,),
      image: new Image.asset('assets/other/clock.png') ,
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.black ,

    );
  }
}