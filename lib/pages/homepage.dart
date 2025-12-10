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
    radius: 122,
    backgroundImage: AssetImage('assets/images/profpic1.jpg'),
  );

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
  builder: (context, orientation) {
    return SelectionArea(
      child: Scaffold(
        appBar: appBar(Theme.of(context).colorScheme.inversePrimary, widget.title),
        body: orientation == Orientation.landscape ? 
          Row(children: bars(context, orientation == Orientation.landscape)) : 
          Column(children: bars(context, orientation == Orientation.landscape))
      )
    );
   });
  }

  List<Widget> bars(BuildContext context, bool horizontal) {
    return <Widget>[
      Expanded(
        flex: 1,
        child: infoBar(context, horizontal: horizontal)
      ),
      Expanded(
        flex: 3,
        child: mainBody(context)
      )
    ];
  }

  Widget infoBar(BuildContext context, {bool horizontal = true}) {
    return Container(
      padding: EdgeInsets.all(22.0),
      color: Theme.of(context).focusColor,
      child: horizontal ? sideBar(context) : topBar(context)
    );
  }

  /// Realization of infoBar if we're in landscape/desktop orientation
  Widget sideBar(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          circularPicture,
          sizedText('Henry Heyden', size: 40),
          sizedText('[ˈhɛnɹi ˈhe͡ɪdⁿ]'),
          sizedText('hheyden [æt̚] macalester [dɑt̚] edu', size: 14)
        ],
      );
  }

  /// Realization of infoBar if we're in portrait/mobile orientation
  Widget topBar(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          circularPicture,
          Column(children: <Widget>[
            sizedText('Henry Heyden', size: 40),
            sizedText('[ˈhɛnɹi ˈhe͡ɪdⁿ]'),
            sizedText('hheyden [æt̚] macalester [dɑt̚] edu', size: 14)
          ]),
        ],
      );
  }

  Widget mainBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 45,),
          bioCard(context),
        ],
      ),
    );
  }
}
