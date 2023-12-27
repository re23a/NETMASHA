import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netmasha/models/advertisements.dart';

class AdvertisementsBoard extends StatelessWidget {
  const AdvertisementsBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 1.75,
        enlargeCenterPage: true,
      ),
      items: imageSliders,
    );
  }
}
