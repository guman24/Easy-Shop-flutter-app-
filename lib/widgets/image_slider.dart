import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSilder extends StatefulWidget {

  final List<String> imageList;

  ImageSilder({this.imageList});
  @override
  _ImageSilderState createState() => _ImageSilderState();
}

class _ImageSilderState extends State<ImageSilder> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];


  @override
  Widget build(BuildContext context) {
    Widget imagesSlide = SizedBox(
//      child: Carousel(
//        boxFit: BoxFit.cover,
////        images: [
////          Image.network('${imgList[0]}',fit: BoxFit.cover,),
////          Image.network('${imgList[1]}',fit: BoxFit.cover,),
////          Image.network('${imgList[2]}',fit: BoxFit.cover,),
////        ],
//      images: widget.imageList,
//        dotSize: 4.0,
//        dotSpacing: 15.0,
//        dotColor: Colors.lightGreenAccent,
//        indicatorBgPadding: 5.0,
//        dotBgColor: Colors.transparent,
//        borderRadius: false,
//        moveIndicatorFromBottom: 180.0,
//        noRadiusForIndicator: true,
//        overlayShadow: true,
//        overlayShadowColors: Colors.white,
//        overlayShadowSize: 0.7,
//        autoplay: false,
//        animationCurve: Curves.easeInOut,
//      ),
    child: CarouselSlider.builder(
      autoPlay: false,
        itemCount: widget.imageList.length,
        itemBuilder: (context,index){
          return Image.asset('${widget.imageList[index]}');
        }),
    );

    return imagesSlide;
  }
}
