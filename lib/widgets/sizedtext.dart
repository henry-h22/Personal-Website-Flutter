import 'package:flutter/material.dart';

Widget sizedText(String text, {double size = 22.2}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size
    ),
    selectionColor: Color.fromRGBO(255, 122, 222, 0.75),
  );
}