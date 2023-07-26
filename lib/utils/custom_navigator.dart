 import 'package:flutter/material.dart';

navigate(context, screen) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => screen
    ));
  }