import 'package:flutter/material.dart';
import 'package:incentivize/task_header.dart';
import 'package:incentivize/tiles.dart';


_TaskBoardState taskBoardState;

class TaskBoard extends StatefulWidget {
  @override
  _TaskBoardState createState() {
    taskBoardState = _TaskBoardState();
    return taskBoardState;
  }
}

class _TaskBoardState extends State<TaskBoard> {
  int index = 0;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TaskHeader.header(index),
          ),
          page(),
        ],
      ),
    );
  }

  void changeIdx(int i) {
    setState(() {
      index = i;
    });
  }

  Widget page() {
    print("hit");
    if (index == 0) {
      return Constructor.forTasks();
    } else if (index == 1) {
      return Constructor.forTasksHistory();
    } else {
      print("hit");
      return calendar();
    }
  }

  Widget calendar() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(3),
            
              decoration: BoxDecoration(
                color: Color(0xFFFCFCFC),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
            //chosenTasks[0],
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xFF141336),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 3),
            ),
          ],
        ),
      ),
    );
  }
}
