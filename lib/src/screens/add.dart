import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet/src/entities/tag_widget.dart';
import 'package:wallet/src/features/expenses_categories.dart';
import 'package:wallet/src/features/main_input.dart';
import 'package:wallet/src/features/side_header.dart';
import 'package:wallet/src/features/way_toggle.dart';
import 'package:wallet/src/models/expense.dart';
import 'package:wallet/src/models/tag.dart';
import 'package:wallet/src/services/budget.dart';
import 'package:wallet/src/services/expense_tags.dart';
import 'package:wallet/src/services/expenses.dart';
import 'package:wallet/src/services/way.dart';

// Add state ?
class Add extends ConsumerWidget {
  final TextEditingController _controller = TextEditingController();

  Add({super.key});

  @override
  void dispose() {
    _controller.dispose();
    // super.dispose();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final way = ref.watch(wayProvider);
    final List<Tag> expenseTags = ref.watch(expenseTagsProvider);

    List<TagWidget> tagWidgets =
        expenseTags.map((tag) => TagWidget(tag: tag)).toList();

    handleOnAdd() {
      final value = _controller.text;
      if (way == WAY.income) {
        ref.read(budgetProvider.notifier).add(int.parse(value));
      } else {
        final tag = expenseTags.firstWhere((tag) => tag.isSelected);
        ref.read(expensesProvider.notifier).add(Expense(
            dateTime: DateTime.now(), price: double.parse(value), tag: tag));
        ref.read(budgetProvider.notifier).remove(int.parse(value));
      }
      context.go('/');
    }

    return CupertinoPageScaffold(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: handleOnAdd,
          child: Icon(CupertinoIcons.add),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SideHeader(),
              const WayToggle(),
              MainInput(
                controller: _controller,
              ),
              way == WAY.expense
                  ? ExpensesCategories(
                      tags: tagWidgets,
                    )
                  : Text('Income Categories'),
            ],
          ),
        ),
      ),
    ));
  }
}
