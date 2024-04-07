import 'package:flutter/cupertino.dart';

class Tag {
  String title;
  IconData icon;
  bool isSelected;

  Tag({required this.title, required this.icon, this.isSelected = false});
}
