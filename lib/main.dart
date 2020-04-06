import 'package:easyshop/screens/home.dart';
import 'package:easyshop/screens/splash.dart';
import 'package:easyshop/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(EasyShopApp());
}

class EasyShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Shop',
      initialRoute: '/',
      routes: {
        '/': (context) => Scaffold(
              body: SplashScreen(),
            ),
        '/home': (context) => Scaffold(
              body: MyBottomNavigationBar(),
            )
      },
    );
  }
}
