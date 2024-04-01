import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpenseRecord extends ConsumerWidget {
  const ExpenseRecord({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 28, 201, 189),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(CupertinoIcons.airplane),
                  ),
                  Text('Travel')
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: [
                  Text('25%'),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('\$130'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
