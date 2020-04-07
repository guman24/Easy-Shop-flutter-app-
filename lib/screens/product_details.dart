import 'dart:convert';

import 'package:easyshop/local/category_data.dart';
import 'package:easyshop/utils/colors.dart';
import 'package:easyshop/widgets/image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductDetailsPage extends StatefulWidget {
  final String prodName;
  final double price;
  final String prodHeaderURL;
  final double avgRate;
  final List<String> images;
  final String detailURL;

  ProductDetailsPage(
      {this.prodName,
      this.price,
      this.prodHeaderURL,
      this.avgRate,
      this.images,
      this.detailURL});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  WebViewController _controller;

  Future<void> productDesc(String fileName, controller) async {
    String fileText = await rootBundle.loadString(fileName);
    controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  Future<void> productDetails(String fileName, controller) async {
    String fileText = await rootBundle.loadString(fileName);
    controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.detailURL);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ///app bar
          SliverAppBar(
            pinned: true,
            title: Text("Product Details"),
          ),

          ///slider images
          SliverToBoxAdapter(
            child: Container(
              height: 200.0,
              child: ImageSilder(
                imageList: widget.images,
              ),
            ),
          ),

          ///product name and price card
          SliverToBoxAdapter(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.prodName,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Rs. ${widget.price.toString()}"),
                  )
                ],
              ),
            ),
          ),

          ///rate and sale card
          SliverToBoxAdapter(
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.green,
                      child: Row(
                        children: <Widget>[
                          Text(
                            widget.avgRate.toString(),
                            style: TextStyle(color: white),
                          ),
                          Icon(
                            Icons.star,
                            color: white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('845 Sale',
                        style: TextStyle(
                            color: grey, fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
          ),

          ///detail product card
          SliverToBoxAdapter(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Detail Product",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: grey,
                          fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100.0,
                      child: WebView(
                        initialUrl: '',
                        javascriptMode: JavascriptMode.unrestricted,
                        onWebViewCreated: (controller) async {
                          _controller = controller;
                          await productDetails('${widget.detailURL}', controller);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          ///Description card
          SliverToBoxAdapter(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200.0,
                        child: WebView(
                          initialUrl: '',
                          javascriptMode: JavascriptMode.unrestricted,
                          onWebViewCreated: (controller) async {
                            _controller = controller;
                            await productDesc('file/cart.html', controller);
                          },
                        ),
                      )),
                  Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "View More",
                          style: TextStyle(color: blue),
                          textAlign: TextAlign.center,
                        ),
                      ))
                ],
              ),
            ),
          ),

          ///reviews comments listtile card
          SliverToBoxAdapter(
            child: Card(
              child: Column(
                children: <Widget>[
                  ///top reviews/view all column
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "View All",
                              style: TextStyle(color: blue),
                            ),
                            Icon(Icons.navigate_next)
                          ],
                        ),
                      )
                    ],
                  ),

                  ///Rating avg,star,count
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          widget.avgRate.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "350",
                          style: TextStyle(color: grey),
                        ),
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: SizedBox(
                      height: 2.0,
                      child: Container(
                        color: grey,
                      ),
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Row(
                            children: <Widget>[
                              Row(
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
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              Text("18 Nov 2019")
                            ],
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "Review comments here",
                              maxLines: 2,
                              style: TextStyle(color: grey, fontSize: 15.0),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Divider(
                            color: grey,
                          ),
                        );
                      },
                      itemCount: 5)
                ],
              ),
            ),
          ),

          ///top rated products text and view more text
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Top Rated Products",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "See All",
                          style: TextStyle(
                              color: blue,
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0),
                        ),
                        Icon(Icons.navigate_next)
                      ],
                    )
                  ],
                )),
          ),

          ///Top rated product horizontal list
          SliverToBoxAdapter(
              child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Container(
              height: 300.0,
              child: ListView.builder(
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: <Widget>[
                          ///product image
                          Container(
                              height: 200.0,
                              width: 200.0,
                              child: Image.asset(
                                '${categoryList[index]['photo']}',
                                fit: BoxFit.cover,
                              )),

                          ///short detail
                          Container(
                            width: 200.0,
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Title',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text("Rs. 500"),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text('4.0'),
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
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ))
        ],
      ),
    );
  }
}
