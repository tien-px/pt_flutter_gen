// DO NOT EDIT. This is code generated via flutter_gen
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  
  {% for color in colors %}
  static const Color hex{{ color }} = Color(0xFF{{ color }});
  {% endfor %}
}
