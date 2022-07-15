
import 'package:flutter/services.dart';

class AppChannel{
  static const MethodChannel _methodChannel = const MethodChannel("app-channel");

  static Future gotoPage(String className, Map param) async{
    return await _methodChannel.invokeMethod("gotoPage", param);
  }
}