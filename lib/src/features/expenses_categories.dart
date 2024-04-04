import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/entities/tag.dart';

class ExpensesCategories extends ConsumerWidget {
  const ExpensesCategories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width:double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(219, 22, 22, 100)),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Wrap(
          children: [
            Tag(),
            Tag(),
            Tag(),
            Tag(),
            Tag(),
          ],
        ));
  }
}
