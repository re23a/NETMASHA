import 'package:flutter/material.dart';

class ActivityImage extends StatelessWidget {
  const ActivityImage({
    super.key, required this.urlImage,
  });
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      child: Image.asset(
       urlImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
