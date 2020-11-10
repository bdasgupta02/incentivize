import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RewardConstructor {
  static final List<Reward> list = [
    Reward(
      title: 'McDonald\'s delivery :)',
      desc: 'Thanks for the hard work...',
      amount: 7200,
      deadline: '10/4/20',
    ),
    Reward(
      title: 'That video game you wanted',
      desc: 'The one with the robot people...',
      amount: 15270,
      deadline: '10/4/20',
    ),
  ];

  static final List<Reward> history = [
    Reward(
      title: 'McDonald\'s delivery :)',
      desc: 'Thanks for the hard work...',
      amount: 7200,
      deadline: '10/4/20',
      redeemedBy: 'John',
      scale: 1,
    ),
    Reward(
      title: 'McDonald\'s delivery :)',
      desc: 'Thanks for the hard work...',
      amount: 7200,
      deadline: '10/4/20',
      redeemedBy: 'Elizabeth',
      scale: 2,
    ),
    Reward(
      title: 'Bubble tea',
      desc: 'High sugar but young issok',
      amount: 3200,
      deadline: '10/4/20',
      redeemedBy: 'John',
      scale: 2,
    ),
  ];

  static Widget addReward() {
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
                        'reward',
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

  static Widget textSubHeading(String s) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Text(
        s,
        style: TextStyle(
          fontSize: 20,
          color: Color(0xFF636363),
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  static Widget toList() {
    List<Widget> widgets = [];

    widgets.add(SizedBox(height: 10));
    widgets.add(addReward());

    widgets.add(SizedBox(height: 50));
    widgets.add(textSubHeading('Active tasks:'));
    for (int i = 0; i < list.length; i++) {
      widgets.add(SizedBox(height: 10));
      widgets.add(list[i].toTile(false));
    }

    return Column(children: widgets);
  }

  static Widget toHistory() {
    List<Widget> widgets = [];

    widgets.add(SizedBox(height: 15));
    widgets.add(textSubHeading('Last 7 days:'));
    for (int i = 0; i < history.length; i++) {
      if (history[i].scale == 1) {
        widgets.add(SizedBox(height: 10));
        widgets.add(history[i].toTile(true));
      }
    }

    widgets.add(SizedBox(height: 50));
    widgets.add(textSubHeading('Last 30 days:'));
    for (int i = 0; i < history.length; i++) {
      if (history[i].scale == 2) {
        widgets.add(SizedBox(height: 10));
        widgets.add(history[i].toTile(true));
      }
    }

    widgets.add(SizedBox(height: 40));
    return Column(
      children: widgets,
    );
  }
}

class Reward {
  String title;
  String desc;
  String deadline;
  String redeemedBy;
  int amount;
  int scale;

  Reward({
    this.title,
    this.desc,
    this.deadline,
    this.redeemedBy,
    this.amount,
    this.scale,
  });

  Widget toTile(bool history) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF6AE58),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: FlatButton(
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () => null,
        child: Row(
          children: <Widget>[
            // left side
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  MdiIcons.trophy,
                                  size: 36,
                                  color: Color(0xFFA0A0A0),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // title and desc go here
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text(
                                      title,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF636363),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text(
                                      desc,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              // heart logo
                              Container(
                                child: Text(
                                  'For: ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFA0A0A0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  MdiIcons.heart,
                                  size: 15,
                                  color: Color(0xFFA0A0A0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  amount.toString(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFA0A0A0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            !history
                                ? SizedBox()
                                : Container(
                                    child: Text(
                                      redeemedBy,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Color indicator
            Container(
              width: 10,
              color: Color(0xFFF6AE58),
            ),
          ],
        ),
      ),
    );
  }
}
