import 'package:easyshop/screens/account.dart';
import 'package:easyshop/screens/cart.dart';
import 'package:easyshop/screens/home.dart';
import 'package:easyshop/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  final List<Widget> contents = [
    HomePage(),
    CartPage(),
    AccountPage(),
  ];

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contents[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        elevation: 50.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _currentIndex == 0 ? red : grey,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: _currentIndex == 0 ? red : grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: _currentIndex == 1 ? red : grey,
              ),
              title: Text(
                'Cart',
                style: TextStyle(
                  color: _currentIndex == 1 ? red : grey,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 2 ? red : grey,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  color: _currentIndex == 2 ? red : grey,
                ),
              )),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}