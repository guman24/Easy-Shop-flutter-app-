import 'package:easyshop/config/size_config.dart';
import 'package:easyshop/local/products_data.dart';
import 'package:easyshop/screens/product_details.dart';
import 'package:flutter/material.dart';

class RecomProductWidget extends StatefulWidget {
  @override
  _RecomProductWidgetState createState() => _RecomProductWidgetState();
}

class _RecomProductWidgetState extends State<RecomProductWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return portrait();
        } else {
          return landscape();
        }
      },
    );
  }

  Widget portrait() {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: SizeConfig.safeBlockVertical/15),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductsDetailsPage(
                            prodName: productList[index]['name'],
                            prodHeaderURL: productList[index]['headerURL'],
                            price: productList[index]['price'],
                            avgRate: productList[index]['avgRate'],
                            images: productList[index]['images'],
                            detailURL: productList[index]['detailURL'],
                          )));
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      '${productList[index]['headerURL']}',
                      fit: BoxFit.cover,
                    ),
                  ),

                  ///short detail
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              productList[index]['name'],
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                                "Rs.${productList[index]["price"].toString()}"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(productList[index]['avgRate']
                                        .toString()),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[700],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('565 Sale'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: productList.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
      ),
    );
  }

  Widget landscape() {
    return Center(
      child: Text("Land"),
    );
  }
}
