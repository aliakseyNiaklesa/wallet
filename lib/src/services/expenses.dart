import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/expense.dart';

class Expenses extends StateNotifier<List<Expense>> {
  Expenses() : super([]);

  void increment() {
    // state = state + 1;
  }
}

final expensesProvider = StateNotifierProvider<Expenses, List<Expense>>((ref) {
  return Expenses();
});
