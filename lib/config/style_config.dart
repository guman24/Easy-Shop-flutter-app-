
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme{

  AppTheme();

  static const Color appBackgroundColor=Color(0xFFFFF7EC);
  static const Color topBarBackgroundColor=Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor=Color(0xFFFFC442);
  static const Color unselectedTabBackgroundColor=Color(0xFFFFFFFC);
  static const Color subtitleTextColor=Color(0xFF9F988F);

  static final ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );
  static final ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme=TextTheme(
    title: _titleLight,
    subtitle: _subtitleLight,
    button: _buttonLight,
    display1: _greetingLight,
    display2: _searchLight,
    body1: _selectedTabLight,
    body2: _unselectedTabLight,
  );

  static final TextTheme darkTextTheme=TextTheme(
    title: _titleDark,
    subtitle: _subtitleDark,
    button: _buttonDark,
    display1: _greetingDark,
    display2: _searchDark,
    body1: _selectedTabDark,
    body2: _unselectedTabDark,
  );

  static final TextStyle _titleLight=TextStyle(
    color: Colors.black,
    fontSize: 25.0,
  );
  static final TextStyle _buttonLight=TextStyle(
    color: Colors.black,
    fontSize: 25.0,
  );
  static final TextStyle _subtitleLight=TextStyle(
    color:subtitleTextColor,
    fontSize: 25.0,
    height: 1.5,
  );

  static final TextStyle _greetingLight=TextStyle(
    color: Colors.black,
    fontSize: 20.0,
  );
  static final TextStyle _searchLight=TextStyle(
    color: Colors.black,
    fontSize: 20.0,
  );

  static final TextStyle _selectedTabLight=TextStyle(
    color: Colors.black,
    fontSize: 25.0,
    fontWeight: FontWeight.bold
  );

  static final TextStyle _unselectedTabLight=TextStyle(
    color: Colors.grey,
    fontSize: 25.0,
  );

  static final TextStyle _titleDark=_titleLight.copyWith(color: Colors.white);
  static final TextStyle _subtitleDark=_subtitleLight.copyWith(color: Colors.white70);
  static final TextStyle _buttonDark=_buttonLight.copyWith(color: Colors.black);
  static final TextStyle _greetingDark=_greetingLight.copyWith(color: Colors.black);
  static final TextStyle _searchDark=_searchLight.copyWith(color: Colors.black);
  static final TextStyle _selectedTabDark=_selectedTabLight.copyWith(color: Colors.white);
  static final TextStyle _unselectedTabDark=_unselectedTabLight.copyWith(color: Colors.white70);
  
}