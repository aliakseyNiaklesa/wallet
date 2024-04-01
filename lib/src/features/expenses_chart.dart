import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpensesChart extends ConsumerWidget {
  const ExpensesChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 28, 201, 189),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Day select'), Text('9 March')],
          ),
          Row(
            children: [Text('data'), Text('data'), Text('data'), Text('data')],
          ),
          Row(
            children: [Text('data'), Text('data'), Text('data'), Text('data')],
          ),
          Row(
            children: [Text('data'), Text('data'), Text('data'), Text('data')],
          ),
          Row(
            children: [Text('data'), Text('data'), Text('data'), Text('data')],
          )
        ],
      ),
    );
  }
}
