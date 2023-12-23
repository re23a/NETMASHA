  import 'package:flutter/material.dart';

List<Widget> imageSliders =
      ["assets/v1.png", "assets/v1.png", "assets/v1.png"].map((url) {
    return Image.asset(url);
  }).toList();