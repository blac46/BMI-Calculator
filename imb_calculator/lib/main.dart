import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imb_calculator/bmi_calculator.dart';
import 'package:imb_calculator/calculator.dart';


void main(){
  runApp(
     DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>
     MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home:  BMIcalculator(),
    ), // Wrap your app
  ),
  );
  
} 