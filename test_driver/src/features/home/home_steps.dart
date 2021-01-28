import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'home_page.dart';

class OpenApp extends GivenWithWorld<FlutterWorld> {
  OpenApp(): super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    Home(world.driver);
  }

  @override
  RegExp get pattern => RegExp(r"I access the app");
}

class ClickIncrementBtn extends AndWithWorld<FlutterWorld>{
  ClickIncrementBtn(): super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override  
  Future<void> executeStep() async {
    Home homePage = Home(world.driver);
    await homePage.clickButtonIncrement();
  }

  @override
  RegExp get pattern => RegExp(r"I click on button increment");
}


class CheckCounterValue extends Then1WithWorld<String, FlutterWorld>{
  CheckCounterValue(): super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    Home homePage = Home(world.driver);
    expectMatch(await homePage.checkCounterValue(), value);
  }

  @override
  RegExp get pattern => RegExp(r"the counter should have the value {string}");
}



