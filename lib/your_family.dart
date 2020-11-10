import 'package:flutter/material.dart';
import 'package:incentivize/headers.dart';


class YourFamily extends StatefulWidget {
  @override
  _YourFamilyState createState() => _YourFamilyState();
}

class _YourFamilyState extends State<YourFamily> {
  var family = [
    Member(
      male: false,
      admin: true,
      owner: true,
      parent: true,
      name: 'Jane',
    ),
    Member(
      male: true,
      admin: true,
      owner: false,
      parent: true,
      name: 'Chris',
    ),
    Member(
      male: true,
      admin: false,
      owner: false,
      parent: false,
      name: 'John',
    ),
    Member(
      male: false,
      admin: false,
      owner: false,
      parent: false,
      name: 'Elizabeth',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return constructMembers();
  }

  Widget addMember() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(0),
        onPressed: () => null,
        child: Container(
          padding: EdgeInsets.only(top: 12, bottom: 12, left: 15, right: 15),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Color(0xFF636363),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'member',
                        style: TextStyle(
                          color: Color(0xFFA0A0A0),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget constructMembers() {
    List<Widget> widgets = [];
    widgets.add(SizedBox(height: 40));

    widgets.add(HeaderText.familyHeader('Your family'));

    widgets.add(addMember());

    widgets.add(SizedBox(height: 30));
    widgets.add(HeaderText.familyHeader('Members'));

    for (int i = 0; i < family.length; i++) {
      widgets.add(family[i].toTile());
    }
    return ListView(children: widgets);
  }
}

class Member {
  bool male;
  bool parent;
  bool admin;
  bool owner;
  String name;

  Member({this.male, this.parent, this.admin, this.name, this.owner});

  Widget toTile() {
    return Container(
      padding: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(35)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 3),
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Expanded(
        child: Row(
          children: <Widget>[
            // image
            Container(
              height: 60,
              width: 60,
              child: Image(
                image: AssetImage(
                    male ? 'male_profile.png' : 'female_profile.png'),
              ),
            ),

            // text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Color(0xFF636363),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      parent ? 'Parent' : 'Child',
                      style: TextStyle(
                        color: Color(0xFFA0A0A0),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ownerSwitch(),
          ],
        ),
      ),
    );
  }

  Widget ownerSwitch() {
    return owner
        ? Container(
            child: Text(
              'Owner',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF636363),
                  fontWeight: FontWeight.normal),
            ),
          )
        : Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF00BF91),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Text(
                    'Remove',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFF7171),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          );
  }
}
