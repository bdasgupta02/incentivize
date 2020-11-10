import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Constructor {
  static var projects = [
    Project(
      title: 'Wash dishes',
      desc: 'Kitchen',
      type: 1,
      assignedTo: 'John',
      reward: 250,
      state: 'Incomplete',
      completionDate: 'none',
    ),
    Project(
      title: 'Clean your desk',
      desc: 'Your room',
      type: 2,
      assignedTo: 'John',
      reward: 120,
      state: 'Pending',
      completionDate: 'none',
    ),
    Project(
      title: 'Get groceries',
      desc: 'Shop',
      type: 1,
      assignedTo: 'John',
      reward: 170,
      state: 'Done',
      completionDate: '12/3/20',
    ),
    Project(
      title: 'Clean your wardrobe',
      desc: 'Your room',
      type: 2,
      assignedTo: 'Elizabeth',
      reward: 120,
      state: 'Pending',
      completionDate: 'none',
    ),
    Project(
      title: 'Vacuum living room',
      desc: 'Don\'t forget the carpet',
      type: 2,
      assignedTo: 'Shared',
      reward: 150,
      state: 'Incomplete',
      completionDate: 'none',
    ),
  ];
  static var finished = [
    Project(
      title: 'Get groceries',
      desc: 'Shop',
      type: 1,
      assignedTo: 'John',
      reward: 170,
      state: 'Done',
      completionDate: '12/3/20',
      scale: 1,
    ),
    Project(
      title: 'Get groceries',
      desc: 'Eggs, cheese...',
      type: 1,
      assignedTo: 'John',
      reward: 170,
      state: 'Done',
      completionDate: '08/3/20',
      scale: 2,
    ),
    Project(
      title: 'Wash car',
      desc: 'Remember the wipers',
      type: 1,
      assignedTo: 'Elizabeth',
      reward: 170,
      state: 'Incomplete',
      completionDate: '08/3/20',
      scale: 2,
    ),
  ];

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

  static Widget addTask() {
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
                        'Assign',
                        style: TextStyle(
                          color: Color(0xFF636363),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'a new task',
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

  static Widget forHome() {
    double percentage = 0.25;
    List<Widget> tiles = [];
    tiles.add(SizedBox(
      height: 40,
    ));

    tiles.add(
      Row(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Image(
              image: AssetImage('female_profile.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Hello,',
                      style: TextStyle(
                        color: Color(0xFF636363),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      ' Jane!',
                      style: TextStyle(
                        color: Color(0xFF636363),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  'Your kids are doing well today!',
                  style: TextStyle(
                    color: Color(0xFFA0A0A0),
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    tiles.add(
      Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: LinearProgressIndicator(
          value: percentage,
          backgroundColor: Color(0xFFD8D8D8),
          valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF747474)),
        ),
      ),
    );

    tiles.add(
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Text(
          '25%',
          style: TextStyle(
            color: Color(0xFFA0A0A0),
            fontSize: 17,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );

    tiles.add(Container(height: 50));
    tiles.add(textSubHeading('Tasks assigned to John today'));
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].assigned == 'John') {
        tiles.add(Container(height: 10));
        tiles.add(projects[i].toTile(true));
      }
    }

    tiles.add(Container(height: 50));
    tiles.add(textSubHeading('Tasks assigned to Elizabeth today'));
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].assigned == 'Elizabeth') {
        tiles.add(Container(height: 10));
        tiles.add(projects[i].toTile(true));
      }
    }

    tiles.add(Container(height: 50));
    tiles.add(textSubHeading('Shared tasks'));
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].assigned == 'Shared') {
        tiles.add(Container(height: 10));
        tiles.add(projects[i].toTile(true));
      }
    }
    tiles.add(SizedBox(
      height: 40,
    ));
    return ListView(
      children: tiles,
    );
  }

  static Widget forTasks() {
    List<Widget> widgets = [];
    widgets.add(SizedBox(height: 10));
    widgets.add(addTask());

    widgets.add(SizedBox(height: 50));
    widgets.add(textSubHeading('Incomplete tasks for today:'));
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].state == 'Incomplete' || projects[i].state == 'Pending') {
        widgets.add(SizedBox(height: 10));
        widgets.add(projects[i].toTile(false));
      }
    }

    widgets.add(SizedBox(height: 50));
    widgets.add(textSubHeading('Completed tasks for today:'));
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].state == 'Done') {
        widgets.add(SizedBox(height: 10));
        widgets.add(projects[i].toTile(false));
      }
    }

    widgets.add(SizedBox(height: 40));
    return Column(
      children: widgets,
    );
  }

  static Widget forTasksHistory() {
    List<Widget> widgets = [];

    widgets.add(SizedBox(height: 15));
    widgets.add(textSubHeading('Today'));
    for (int i = 0; i < finished.length; i++) {
      if (finished[i].scale == 1) {
        widgets.add(SizedBox(height: 10));
        widgets.add(finished[i].toTile(false));
      }
    }

    widgets.add(SizedBox(height: 50));
    widgets.add(textSubHeading('Completed tasks for today:'));
    for (int i = 0; i < finished.length; i++) {
      if (finished[i].scale == 2) {
        widgets.add(SizedBox(height: 10));
        widgets.add(finished[i].toTile(false));
      }
    }

    widgets.add(SizedBox(height: 40));
    return Column(
      children: widgets,
    );
  }
}

class Project {
  String title;
  String desc;
  String assignedTo;
  String state;
  String completionDate;
  int reward;

  // 1 = today; 2 = last 7 days; 3 = last 30 days;
  int scale;

  // type 1: food, type 2: cleaning
  int type;

  Project({
    this.title,
    this.desc,
    this.assignedTo,
    this.reward,
    this.type,
    this.state,
    this.completionDate,
    this.scale,
  });

  String get assigned => assignedTo;

  Widget toTile(bool home) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: typeColor(),
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
                              typeIcon(),
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
                                child: Icon(
                                  MdiIcons.heart,
                                  size: 15,
                                  color: Color(0xFFA0A0A0),
                                ),
                              ),
                              Container(
                                child: Text(
                                  reward.toString(),
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
                            home
                                ? SizedBox()
                                : Container(
                                    child: Text(
                                      assignedTo,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFFA0A0A0),
                                      ),
                                    ),
                                  ),
                            !needsHomeLabel()
                                ? SizedBox()
                                : Container(
                                    child: Text(
                                      state,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: typeColor(),
                                      ),
                                    ),
                                  ),
                            home || state != 'Done'
                                ? SizedBox()
                                : Container(
                                    child: Text(
                                      completionDate,
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
              color: typeColor(),
            ),
          ],
        ),
      ),
    );
  }

  Widget stateWidget() {
    if (state == 'Pending') {
      return Container(
        child: Text(
          'Pending',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF6AE58),
          ),
        ),
      );
    } else if (state == 'Done') {
      return Container(
        child: Text(
          completionDate,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00BF91),
          ),
        ),
      );
    } else {
      return null;
    }
  }

  bool needsHomeLabel() {
    return state == 'Pending' || state == 'Done';
  }

/*
  String stateWidget() {
    if (state == 'Incomplete') {
      return '';
    }
  }*/

  Color typeColor() {
    if (state == 'Incomplete' && scale != null && scale == 2) {
      return Color(0xFFFF7171);
    }

    if (state == 'Pending') {
      return Color(0xFFF6AE58);
    } else if (state == 'Done') {
      return Color(0xFF00BF91);
    } else if (type == 1) {
      return Color(0xFF57A0E3);
    } else if (type == 2) {
      return Color(0xFF8E81DE);
    }
  }

  Widget typeIcon() {
    if (type == 1) {
      return Container(
        child: Icon(
          Icons.local_dining,
          size: 36,
          color: Color(0xFFA0A0A0),
        ),
      );
    } else if (type == 2) {
      return Container(
        child: Icon(
          MdiIcons.broom,
          size: 36,
          color: Color(0xFFA0A0A0),
        ),
      );
    }
  }
}

class Reward {}
