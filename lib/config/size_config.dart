
import 'package:flutter/cupertino.dart';
class SizeConfig{
  static MediaQueryData _mediaQueryData;
  static double screenWidth=0;
  static double screenHeight=0;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;


  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth -
        _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight -
        _safeAreaVertical) / 100;
  }

  bool isMobile(){
    if(safeBlockHorizontal<600){
      return true;
    }
  }

}



//class SizeConfig{
//  static double _screenWidth;
//  static double _screenHeight;
//  static double _blockWidth=0;
//  static double _blockHeight=0;
//
//  static double textMultiplier;
//  static double imageSizeMultiplier;
//  static double heightMultiplier;
//  static double widthMultiplier;
//  static bool isPortrait=true;
//  static bool isMobilePortrait=false;
//
//  void init(BoxConstraints constraints,Orientation orientation){
//
//    if(orientation==Orientation.portrait){
//      _screenWidth=constraints.maxWidth;
//      _screenHeight=constraints.maxHeight;
//      isPortrait=true;
//
//      if(_screenWidth<450){
//        isMobilePortrait=true;
//      }
//    }else{
//      _screenWidth=constraints.maxHeight;
//      _screenHeight=constraints.maxWidth;
//      isPortrait=false;
//      isMobilePortrait=false;
//    }
//
//    _blockWidth=_screenWidth/100;
//    _blockHeight=_screenHeight/100;
//
//    textMultiplier=_blockHeight;
//    imageSizeMultiplier=_blockWidth;
//    heightMultiplier=_blockHeight;
//    widthMultiplier=_blockWidth;
//
//    print(_blockWidth);
//    print(_blockHeight);
//
//  }
//}