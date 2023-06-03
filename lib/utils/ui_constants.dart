import 'package:flutter/material.dart';

class UIConstants {
  static final borderRadius10 = BorderRadius.circular(10);
  static final borderRadius20 = BorderRadius.circular(20);
  static final borderRadiusCircular = BorderRadius.circular(1000);
  //-------------
  static const gapHeight10 = SizedBox(height: 10);
  static const gapHeight20 = SizedBox(height: 20);
  static const gapWidth10 = SizedBox(width: 10);
  static const gapWidth20 = SizedBox(width: 20);
  //-------------

  static final textFieldBorder = OutlineInputBorder(
      borderRadius: UIConstants.borderRadius20, borderSide: BorderSide.none);
}
