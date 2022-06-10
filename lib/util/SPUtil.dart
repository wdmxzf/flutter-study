import 'package:shared_preferences/shared_preferences.dart';

class SPUtil{
  static SPUtil instant = SPUtil();
  static SharedPreferences? _sp;
  static SPUtil getInstant() {
    _initSP();
    return instant;
  }

  static void _initSP() async{
    _sp ??= await SharedPreferences.getInstance();
  }

  void save(String key, String value){
    _sp?.setString(key, value);
  }

  dynamic getValue(String key){
    return _sp?.get(key);
  }

  void remove(String key){
    _sp?.remove(key);
  }

}