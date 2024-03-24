import 'package:flutter/foundation.dart';

class Expense {
  DateTime dateTime;
  double price;
  Category category;

  Expense(
      {required this.dateTime, required this.price, required this.category});
}
