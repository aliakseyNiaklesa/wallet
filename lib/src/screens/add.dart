import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/features/side_header.dart';
import 'package:wallet/src/services/way.dart';

class Add extends ConsumerWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final way = ref.watch(wayProvider);
    handleOnAdd() {
      print(way);
    }

    return CupertinoPageScaffold(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: handleOnAdd,
          child: Icon(CupertinoIcons.add),
        ),
        body: SafeArea(
          child: Column(
            children: [SideHeader(), Text('data')],
          ),
        ),
      ),
    ));
  }
}
