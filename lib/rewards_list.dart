import 'package:flutter/material.dart';
import 'package:incentivize/reward_tiles.dart';
import 'package:incentivize/task_header.dart';
import 'package:incentivize/tiles.dart';

_RewardsListState rewardState;

class RewardsList extends StatefulWidget {
  @override
  _RewardsListState createState() {
    rewardState = _RewardsListState();
    return rewardState;
  }
}

class _RewardsListState extends State<RewardsList> {
  int index = 0;

  void changeIdx(int i) {
    setState(() {
      index = i;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TaskHeader.rewardsHeader(index),
          ),
          page(),
        ],
      ),
    );
  }

  Widget page() {
    if (index == 0) {
      return RewardConstructor.toList();
    } else {
      return RewardConstructor.toHistory();
    } 
  }
}
