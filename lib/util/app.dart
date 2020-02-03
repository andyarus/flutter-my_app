import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App {

  static Size size(BuildContext context) {
    return Size(MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);
  }

  static void disableDeviceRotation() {
    // Setup device orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      //DeviceOrientation.portraitDown,
    ]);
  }

}
