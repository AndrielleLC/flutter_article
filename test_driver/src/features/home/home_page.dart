import 'package:flutter_driver/flutter_driver.dart';
import 'home_element_map.dart';

class Home extends HomeElementMap{
  FlutterDriver _driver;

  Home(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<void> clickButtonIncrement() async {
    return _driver.tap(buttonIncrement);
  }

  Future<String> checkCounterValue() async{
    return _driver.getText(counterValue);
  }
}



