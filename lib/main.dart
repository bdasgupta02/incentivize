import 'package:flutter/material.dart';
import 'package:incentivize/headers.dart';
import 'package:incentivize/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Incentivize'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void goToPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Navbar()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: body(),
      ),
    );
  }

  Widget body() {
    List<Widget> tiles = [];
    tiles.add(SizedBox(height: 100));

    tiles.add(HeaderText.centerHeader('Sign-in'));
    tiles.add(SizedBox(height: 150));

    tiles.add(
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 40, right: 40),
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          'Email',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF9F9F9F),
          ),
        ),
      ),
    );

    tiles.add(SizedBox(height: 20));
    tiles.add(
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 40, right: 40),
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          'Password',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF9F9F9F),
          ),
        ),
      ),
    );

    tiles.add(SizedBox(height: 120));
    tiles.add(
      FlatButton(
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Navbar()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 90, right: 90),
          padding: EdgeInsets.only(top: 6, bottom: 6),
          decoration: BoxDecoration(
            color: Color(0xFFFF7171),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            'Sign-in',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
    tiles.add(SizedBox(height: 10));
    tiles.add(
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 90, right: 90),
        padding: EdgeInsets.only(top: 6, bottom: 6),
        child: Text(
          'Or create a new account',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFFF7171),
          ),
        ),
      ),
    );

    return Column(children: tiles);
  }
}
