import 'package:flutter/material.dart';

class LocalColor{
  static const int _primaryValue = 0xFF2B637B;

  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue, 
      <int, Color>{
      500: Color(LocalColor._primaryValue),
    },
  );


  static const int _arrowValue = 0xFF554AF0;

  static const MaterialColor arrowColor = MaterialColor(
    _arrowValue, 
      <int, Color>{
      500: Color(LocalColor._arrowValue),
    },
  );
}