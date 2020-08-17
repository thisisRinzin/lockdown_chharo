import 'package:flutter/material.dart';

class UIHelper {
  static RaisedButton buildPrimaryButton({Function onPressed, String text}) =>
      RaisedButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18, letterSpacing: 3),
        ),
        onPressed: onPressed,
      );
}
