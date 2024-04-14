import 'package:wallet/src/models/tag.dart';

class Expense {
  DateTime dateTime;
  double price;
  Tag tag;

  Expense({required this.dateTime, required this.price, required this.tag});
}
