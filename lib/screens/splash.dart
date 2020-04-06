import 'dart:async';

import 'package:easyshop/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),
        ()=>Navigator.pushReplacementNamed(context, '/home')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context),
    );
  }

  Widget body(BuildContext context){
    if(MediaQuery.of(context).orientation==Orientation.portrait){
      return Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'images/extra/splash.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Welcome To",style: TextStyle(color: white,fontWeight:FontWeight.w700,fontSize: 25.0 ),),
                    Text("EASY SHOP",style: TextStyle(color: white,fontWeight:FontWeight.w900,fontSize: 30.0 ),),
                  ],
                ),
              )
            ],
          ));
    }else{
      return Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'images/extra/splash.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width
                  ,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Welcome To",style: TextStyle(color: white,fontWeight:FontWeight.w700,fontSize: 25.0 ),),
                    Text("EASY SHOP",style: TextStyle(color: white,fontWeight:FontWeight.w900,fontSize: 30.0 ),),
                  ],
                ),
              )
            ],
          ));
    }
  }
}
