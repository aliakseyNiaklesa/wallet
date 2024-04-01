import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/services/way.dart';

class WayToggle extends ConsumerWidget {
  const WayToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final way = ref.watch(wayProvider);
    onValueChanged(WAY? way) {
      if (way != null) {
        ref.read(wayProvider.notifier).setWay(way);
      }
    }

    return SizedBox(
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl<WAY>(
          thumbColor: Color.fromARGB(255, 28, 201, 189),
          groupValue: way,
          children: const <WAY, Widget>{
            WAY.expense: Text('Expenses'),
            WAY.income: Text('Income'),
          },
          onValueChanged: onValueChanged),
    );
  }
}
