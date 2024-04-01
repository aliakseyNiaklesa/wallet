import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/features/expense_record.dart';

class Expenses extends ConsumerWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      // shrinkWrap: true,
      children: [
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
        ExpenseRecord(),
      ],
    );

    // return Column(
    //   children: [
    //     ExpensesChart(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //     ExpenseRecord(),
    //   ],
    // );
  }
}
