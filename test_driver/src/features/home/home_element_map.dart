import 'package:flutter_driver/flutter_driver.dart';

class HomeElementMap{
  final buttonIncrement = find.byTooltip("Increment");
  final counterValue = find.byValueKey("counterValue");
}