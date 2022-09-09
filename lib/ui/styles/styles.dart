import 'dart:ui';

import 'package:flutter/material.dart';

RoundedRectangleBorder myRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5),
);

BoxDecoration myBoxDecoration(image) => BoxDecoration(
      image: DecorationImage(
        image: image,
      ),
    );

BoxDecoration myBoxDecoration01(image) => BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      image: image,
    );

TextStyle myTextstyle18(color) => TextStyle(
      fontSize: 18,
      color: color,
    );

TextStyle myTextstyle12(color) => TextStyle(
      fontSize: 12,
      color: color,
    );
