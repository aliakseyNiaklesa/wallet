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
          ),
          Expense(
            dateTime: DateTime.now(),
            price: 130,
          ),
          Expense(
            dateTime: DateTime.now(),
            price: 130,
          ),
          Expense(
            dateTime: DateTime.now(),
            price: 130,
          )
        ]);

  void add(Expense expense) {
    state = [...state, expense];
  }
}

final expensesProvider = StateNotifierProvider<Expenses, List<Expense>>((ref) {
  return Expenses();
});
