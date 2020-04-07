import 'package:easyshop/config/size_config.dart';
import 'package:easyshop/local/category_data.dart';
import 'package:easyshop/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: 250.0,
        child: GridView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              childAspectRatio: SizeConfig.screenWidth<600?SizeConfig.safeBlockHorizontal/5:SizeConfig.safeBlockHorizontal/7
            ),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    color: Colors.black87,
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          child: Image.asset(
                            '${categoryList[index]['photo']}',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height,
                          ),
                          opacity: 0.5,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height,
                          child: Text(
                            categoryList[index]['category'],
                            style: TextStyle(color: white,fontSize: 15.0,fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              );
            }));
  }
}
