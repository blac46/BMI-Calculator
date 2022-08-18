import 'package:flutter/material.dart';

BoxDecoration appGradient(){
  return const BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff5b3896),
                Color(0xff482678),
                Color(0xff310F51)
              ]
               )
          );
}