import 'package:flutter/material.dart';
import 'package:incentivize/tiles.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        child: Constructor.forHome(),
      ),
    );
  }
}
