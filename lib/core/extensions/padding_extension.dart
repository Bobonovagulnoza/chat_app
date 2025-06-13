import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  Widget paddingSymmetric({num horizontal = 12, num vertical = 12}) => Padding(padding: EdgeInsets.symmetric(horizontal: horizontal.toDouble(), vertical: vertical.toDouble()), child: this);
  Widget paddingOnly({num top = 12, num bottom = 12, num left = 12, num right = 12}) => Padding(padding: EdgeInsets.only(bottom: bottom.toDouble(), top: top.toDouble(), left: left.toDouble(), right: right.toDouble()), child: this);
}