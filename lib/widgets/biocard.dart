import 'package:flutter/material.dart';

const String bio = '   I am a senior Linguistics and Computer Science student at Macalester College. My research interests lie in the intersection of speech, machine learning, and music.';

Widget bioCard(BuildContext context) {
  return Row(children: <Widget>[Expanded(
    child: Container(
      height: 120,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text(bio),
    )
  )]);
}