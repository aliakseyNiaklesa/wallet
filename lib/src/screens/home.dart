import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      ExpensesChart(),
      Expanded(child: Expenses()),
    ];

    return CupertinoPageScaffold(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
          child: Column(
        children: [
          MainHeader(),
          WayToggle(),
          ...(way == WAY.expense ? HomeWidgets : [Text('2')]),
        ],
      )),
    ));
  }
}
