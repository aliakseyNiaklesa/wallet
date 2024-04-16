import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/expense.dart';
import 'package:wallet/src/models/tag.dart';

class Expenses extends StateNotifier<List<Expense>> {
  Expenses()
      : super([
          Expense(
              dateTime: DateTime.now(),
              price: 130,
              tag: Tag(uuid: '134', title: '123', icon: CupertinoIcons.add)),
          Expense(
              dateTime: DateTime.now(),
              price: 130,
              tag: Tag(uuid: '134', title: '123', icon: CupertinoIcons.add)),
          Expense(
              dateTime: DateTime.now(),
              price: 130,
              tag: Tag(uuid: '134', title: '123', icon: CupertinoIcons.add)),
          Expense(
              dateTime: DateTime.now(),
              price: 130,
              tag: Tag(uuid: '134', title: '123', icon: CupertinoIcons.add))
        ]);

  void add(Expense expense) {
    state = [...state, expense];
  }
}

final expensesProvider = StateNotifierProvider<Expenses, List<Expense>>((ref) {
  return Expenses();
});
