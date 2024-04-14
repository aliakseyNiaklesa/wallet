import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/entities/expense_record.dart';
import 'package:wallet/src/services/expenses.dart';

class Expenses extends ConsumerWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expenses = ref.watch(expensesProvider);

    print(expenses);

    return ListView(
      // shrinkWrap: true,
      children: [
        ...expenses
            .map((expense) => ExpenseRecord(
                  expense: expense,
                ))
            .toList(),
      ],
    );
  }
}
