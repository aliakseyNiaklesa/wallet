import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/features/main_header.dart';
import 'package:wallet/src/features/way_toggle.dart';
import 'package:wallet/src/services/expenses.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CupertinoPageScaffold(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
          child: Center(
              child: Column(
        children: [
          MainHeader(),
          WayToggle(),
        ],
      ))),
    ));
  }
}
