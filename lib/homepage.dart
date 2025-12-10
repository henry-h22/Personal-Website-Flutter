import 'package:flutter/material.dart';
import 'package:heyden_site/widgets/appbar.dart';
import 'package:heyden_site/widgets/biocard.dart';
import 'package:heyden_site/widgets/sizedtext.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Widget circularPicture = CircleAvatar(
    radius: 70,
    backgroundImage: AssetImage('assets/images/profpic1.jpg'),
  );

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: appBar(Theme.of(context).colorScheme.inversePrimary, widget.title),
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: sideBar(context)
            ),
            Expanded(
              flex: 3,
              child: mainBody(context)
            )
          ],
        )
      )
    );
  }

  Widget sideBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.0),
      color: Theme.of(context).focusColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          circularPicture,
          sizedText('Henry Heyden', size: 40),
          sizedText('[ˈhɛnɹi ˈhe͡ɪdⁿ]'),
          sizedText('hheyden [æt̚] macalester [dɑt̚] edu', size: 14),
        ],
      )
    );
  }

  Widget mainBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          bioCard(context)
        ],
      ),
    );
  }
}
