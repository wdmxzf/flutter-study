import 'package:flutter/cupertino.dart';
import 'package:flutter02/page/OnePage.dart';
import 'package:flutter02/page/ThreeStatePage.dart';
import 'package:flutter02/page/TwoPage.dart';

class RoutesConfig{
  static String PAGE_ONE ="/OnePage";
  static String PAGE_TWO ="/TwoPage";
  static String PAGE_THREE ="/ThreePage";

  static Map<String, WidgetBuilder> routes(context){
    return{
      PAGE_ONE: (context)=> OnePage(),
      PAGE_TWO: (context)=>TwoPage(),
      PAGE_THREE:(context)=>ThreeStatePage()
    };
  }
}