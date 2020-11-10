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
}
