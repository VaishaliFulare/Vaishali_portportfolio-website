import 'package:flutter/material.dart';
import '../constants/colors.dart'; // Ensure this file exists and is correctly imported

BoxDecoration kHeaderDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.transparent,
      CustomColors.bgLight1, // Ensure bgLight1 is defined in CustomColors
    ],
  ),
  borderRadius: BorderRadius.all(Radius.circular(100)), // Replace circular() with all()
);
