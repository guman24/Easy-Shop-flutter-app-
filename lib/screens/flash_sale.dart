import 'package:easyshop/config/size_config.dart';
import 'package:easyshop/local/products_data.dart';
import 'package:easyshop/screens/product_detail.dart';
import 'package:easyshop/screens/product_details.dart';
import 'package:easyshop/utils/colors.dart';
import 'package:flutter/material.dart';

class FlashSalePage extends StatefulWidget {
  @override
  _FlashSalePageState createState() => _FlashSalePageState();
}

class _FlashSalePageState extends State<FlashSalePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
          ///top container
          Container(
            height: SizeConfig.blockSizeVertical * 30,
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
          ),

          ///timer for flash
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "End In",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "23: 47: 00",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),

          ///gridview of flash items
          GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: productList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: SizeConfig.blockSizeVertical / 15),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsPage(
                      prodName: productList[index]['name'],
                      prodHeaderURL: productList[index]['headerURL'],
                      price: productList[index]['price'],
                      avgRate: productList[index]['avgRate'],
                      detailURL: productList[index]['detailURL'],
                      images: productList[index]['images'],
                    )));
                  },
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            flex:2,
                            child: Image.asset('${productList[index]['headerURL']}',fit: BoxFit.cover,)),
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:  EdgeInsets.all(SizeConfig.safeBlockHorizontal*2),
                                  child: Text(
                                    productList[index]["name"],
                                    maxLines: 1,
                                    style: TextStyle(fontSize: SizeConfig.blockSizeVertical*2.1),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.all(SizeConfig.safeBlockHorizontal*2),
                                  child: Text(
                                    "Rs. ${productList[index]['oldPrice'].toString()}",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Rs. ${productList[index]['price'].toString()}"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star,color: Colors.yellow[700],),
                                      Icon(Icons.star,color: Colors.yellow[700],),
                                      Icon(Icons.star,color: Colors.yellow[700],),
                                      Icon(Icons.star,color: Colors.yellow[700],),
                                      Icon(Icons.star,color: Colors.yellow[700],),
                                      Text("( ${productList[index]['totalFiveStar'].toString()} )")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:5.0,left: 5.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: grey,size: 20.0,),
                                      Text(productList[index]['location'],style: TextStyle(color: grey),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${productList[index]['stockAvailable'].toString()} Available"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
