import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet/src/features/expenses_chart.dart';
import 'package:wallet/src/features/main_header.dart';
import 'package:wallet/src/features/way_toggle.dart';
import 'package:wallet/src/services/way.dart';
import 'package:wallet/src/widgets/Expenses.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final way = ref.watch(wayProvider);

    List<Widget> HomeWidgets = [
      const ExpensesChart(),
      const Expanded(child: Expenses()),
    ];

    handleOnAdd() {
      context.push('/add');
    }

    return CupertinoPageScaffold(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,        floatingActionButton: FloatingActionButton(
          onPressed: handleOnAdd,
          child: Icon(CupertinoIcons.add),
        ),
        body: SafeArea(
            child: Column(
          children: [
            const MainHeader(),
            const WayToggle(),
            ...(way == WAY.expense ? HomeWidgets : [Text('2')]),
          ],
        )),
      ),
    ));
  }
}
