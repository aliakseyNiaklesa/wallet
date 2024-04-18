import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/expense.dart';
import 'package:wallet/src/models/tag.dart';

class ExpenseTag {
  Tag? tag;
  List<Expense> expenses;

  ExpenseTag({required this.expenses, this.tag});
}

class ExpenseTagState extends StateNotifier<ExpenseTag> {
  ExpenseTagState() : super(ExpenseTag(expenses: []));

  void addExpense(Expense expense) {
    state.expenses.add(expense);
    state = state; // could it update state/ how to change ?
  }
}
