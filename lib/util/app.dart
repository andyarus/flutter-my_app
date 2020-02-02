import 'package:flutter/material.dart';

class App {

  static Size size(BuildContext context) {
    return Size(MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);
  }

}