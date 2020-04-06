import 'package:easyshop/local/category_data.dart';
import 'package:easyshop/local/menu_data.dart';
import 'package:easyshop/local/week_promotion_data.dart';
import 'package:easyshop/screens/product_detail.dart';
import 'package:easyshop/screens/product_details.dart';
import 'package:easyshop/widgets/category_widget.dart';
import 'package:easyshop/widgets/image_slider.dart';
import 'package:easyshop/widgets/recommended_product_widget.dart';
import 'package:easyshop/widgets/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easyshop/utils/colors.dart';
import 'package:easyshop/widgets/flash_sale_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ///app bar
          SliverAppBar(
            expandedHeight: 70.0,
            pinned: true,
            backgroundColor: Colors.blueGrey,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchWidget(),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.commentDots),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
              ),
            ],
          ),

          ///Image Slide Section
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200.0,
//              child: ImageSilder(),
            ),
          ),

          ///Menu Text
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          ///Menu Slivergrid
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                onTap: () {},
                child: ListTile(
                  title: Image.asset(menuList[index]['icon']),
                  subtitle: Text(
                    menuList[index]['name'],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, color: black),
                  ),
                ),
              );
            }, childCount: menuList.length),
          ),

          ///week promotion text
          SliverToBoxAdapter(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Week Promotion",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
              ),
            ),
          ),

          ///week promotion sliverlist
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 250.0,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: promotionList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        color: promotionList[index]['color'],
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              '${promotionList[index]['photo']}',
                              fit: BoxFit.cover,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "Discount",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "${promotionList[index]['discount']}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ),

          ///flash sale container
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlashSaleWidget(),
            ),
          ),

          ///category text
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
            ),
          ),

          ///Category SliverGrid horizontal scroll
          SliverToBoxAdapter(
            child: CategoryWidget(),
          ),

          ///Recommended Text
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 15.0),
              child: Text(
                "Recommended",
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w700, color: black),
              ),
            ),
          ),

          ///Recommended GridView
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15.0),
                child:RecomProductWidget() ,
              ))
        ],
      ),
    );
  }
}
