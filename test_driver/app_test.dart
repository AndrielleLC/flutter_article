import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'src/features/home/home_steps.dart';



Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/src/features/home/**.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json') 
    ]
    ..stepDefinitions = [
      OpenApp(),
      ClickIncrementBtn(),
      CheckCounterValue(),
    ]
    ..hooks = [AttachScreenshotOnFailedStepHook()] 
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart"
    ..exitAfterTestRun = true;
  return GherkinRunner().execute(config);
}




