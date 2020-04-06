import 'package:easyshop/config/size_config.dart';
import 'package:easyshop/utils/colors.dart';
import 'package:flutter/material.dart';

class FlashSalePage extends StatefulWidget {
  @override
  _FlashSalePageState createState() => _FlashSalePageState();
}

class _FlashSalePageState extends State<FlashSalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.6,
        backgroundColor: white,
        title: Text(
          "Flash Sale",
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: blue,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.greenAccent],
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "FlashSale",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 8.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: white, width: 2.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Up to 75% off",
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0),
                            ),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.asset(
                      'images/content/book.png',
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
