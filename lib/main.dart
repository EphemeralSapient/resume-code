import 'package:flutter/material.dart';

import 'land.dart' as land;
import 'port.dart' as port;

void main() {
  runApp(MaterialApp(
    home: select(),
  ));
}

class select extends StatefulWidget {
  @override
  State<select> createState() => _selectState();
}

class _selectState extends State<select> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: land.ResumeApp(),
        secondChild: port.ResumeApp(),
        crossFadeState: MediaQuery.of(context).size.width >= 975
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: Duration(seconds: 1));
  }
}
