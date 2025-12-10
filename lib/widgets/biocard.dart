import 'package:flutter/material.dart';

const String bio = '   I am a senior Linguistics and Computer Science student at Macalester College. My research interests lie in the intersection of speech, machine learning, and music. Outside of academics, I play jazz trombone and do audio engineering work in my school\'s concert hall.';

Widget bioCard(BuildContext context) {
  return Row(children: <Widget>[Expanded(
    child: Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text(bio),
    )
  )]);
}