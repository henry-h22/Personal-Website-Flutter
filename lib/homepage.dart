import 'package:flutter/material.dart';
import 'package:heyden_site/widgets/appbar.dart';

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
    return Scaffold(
      appBar: appBar(Theme.of(context).colorScheme.inversePrimary, widget.title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            circularPicture,
            const Text('Henry Heyden'),
          ],
        ),
      ),
    );
  }
}

