import 'package:flutter/material.dart';

List<Widget> imageSliders = [
  "assets/ppp.png",
  "assets/Group 632606.png",
  "assets/iiiiii.png"
].map((url) {
  return Image.asset(url);
}).toList();
