import 'package:flutter/material.dart';

class HeaderText {
  static Widget familyHeader(String s) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        s,
        style: TextStyle(
          color: Color(0xFF636363),
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static Widget centerHeader(String s) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Text(
        s,
        style: TextStyle(
          color: Color(0xFF636363),
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
