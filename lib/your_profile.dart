import 'package:flutter/material.dart';
import 'package:incentivize/headers.dart';

class YourProfile extends StatefulWidget {
  @override
  _YourProfileState createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: toCol(),
      ),
    );
  }

  List<Widget> toCol() {
    List<Widget> tiles = [];
    tiles.add(SizedBox(height: 40));

    tiles.add(HeaderText.familyHeader('Your profile'));

    tiles.add(SizedBox(height: 40));
    tiles.add(
      Row(
        children: <Widget>[
          Container(
            height: 90,
            width: 90,
            child: Image(
              image: AssetImage('female_profile.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              'Jane Doe',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF636363),
              ),
            ),
          ),
        ],
      ),
    );

    tiles.add(SizedBox(height: 40));
    tiles.add(
      Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                'Email: ',
                style: TextStyle(
                  color: Color(0xFF636363),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              child: Text(
                'test2@test.com',
                style: TextStyle(
                  color: Color(0xFF636363),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    tiles.add(SizedBox(height: 20));
    tiles.add(
      Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                'Notifications: ',
                style: TextStyle(
                  color: Color(0xFF636363),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              child: Text(
                'Always on',
                style: TextStyle(
                  color: Color(0xFF636363),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    tiles.add(SizedBox(height: 20));
    tiles.add(
      Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                'Role: ',
                style: TextStyle(
                  color: Color(0xFF636363),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              child: Text(
                'Parent',
                style: TextStyle(
                  color: Color(0xFF636363),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    tiles.add(SizedBox(height: 50));
    tiles.add(
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 90, right: 90),
        padding: EdgeInsets.only(top: 6, bottom: 6),
        decoration: BoxDecoration(
          color: Colors.white,
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
          'Edit profile',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF636363),
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
        decoration: BoxDecoration(
          color: Colors.white,
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
          'Change password',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF636363),
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
          'Log out',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
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
        decoration: BoxDecoration(
          color: Color(0xFF57A0E3),
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
          'Help and FAQs',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
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
          'Delete account',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFFF7171),
          ),
        ),
      ),
    );

    return tiles;
  }
}
