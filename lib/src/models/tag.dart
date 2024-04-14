import 'package:flutter/cupertino.dart';

class Tag {
  String uuid;
  String title;
  IconData icon;
  bool isSelected;

  Tag(
      {required this.uuid,
      required this.title,
      required this.icon,
      this.isSelected = false});
}
