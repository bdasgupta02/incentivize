import 'package:flutter/material.dart';
import 'package:incentivize/task_list.dart';

class TaskHeader {
  // order: 1 = task list; 2 = task history; 3 = calendar
  static Widget header(int order) {
    List<Widget> widgets = [];

    widgets.add(SizedBox(height: 40));
    if (order == 0) {
      widgets.add(
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 5, bottom: 5),
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
                  'Task list',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () => taskBoardState.changeIdx(1),
                  child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    'Task history',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF636363),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () => taskBoardState.changeIdx(2),
                  child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    'Calendar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF636363),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (order == 1) {
      widgets.add(
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () => taskBoardState.changeIdx(0),
                  child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    'Task list',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF636363),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 5, bottom: 5),
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
                  'Task history',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(2),
                onPressed: () => taskBoardState.changeIdx(2),
                  child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    'Calendar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF636363),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      widgets.add(
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () => taskBoardState.changeIdx(0),
                  child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    'Task list',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF636363),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () => taskBoardState.changeIdx(1),
                  child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    'Task history',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF636363),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 5, bottom: 5),
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
                  'Calendar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(children: widgets);
  }
}
