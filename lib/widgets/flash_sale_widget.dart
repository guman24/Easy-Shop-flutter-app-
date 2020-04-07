import 'package:easyshop/local/products_data.dart';
import 'package:easyshop/local/week_promotion_data.dart';
import 'package:easyshop/screens/flash_sale.dart';
import 'package:easyshop/utils/colors.dart';
import 'package:flutter/material.dart';

class FlashSaleWidget extends StatefulWidget {
  @override
  _FlashSaleWidgetState createState() => _FlashSaleWidgetState();
}

class _FlashSaleWidgetState extends State<FlashSaleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400.0,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [red, blue],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                width: 120.0,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FlashSalePage()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(
                              'images/extra/flash.png',
                              width: 60.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "Flash",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "Sale",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "End Sale In:",
                              style: TextStyle(
                                  color: white, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "12 : ",
                                  style: TextStyle(color: white),
                                ),
                                Text(
                                  "00 : ",
                                  style: TextStyle(color: white),
                                ),
                                Text(
                                  "00",
                                  style: TextStyle(color: white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))),
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 20.0),
                    child: Container(
                      width: 200.0,
                      child: Card(
                          child: Column(
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            child: Image.asset(productList[index]['headerURL']),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, bottom: 5.0, right: 3.0),
                                  child: Text(
                                    productList[index]['name'],
                                    maxLines: 2,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, bottom: 5.0),
                                  child: Text(
                                    "Rs. ${productList[index]['oldPrice']}",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, bottom: 5.0),
                                  child: Text(
                                    "Rs. ${productList[index]['price']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, bottom: 5.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Text("(${productList[index]['totalFiveStar']})")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, bottom: 3.0),
                                  child: Text(
                                    "${productList[index]['stockAvailable']} Available",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                  );
                }),
          ],
        ));
  }
}
