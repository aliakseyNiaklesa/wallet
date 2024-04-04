import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Tag extends ConsumerWidget {
  const Tag({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        print('click');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          // color: isSelected ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Wrap(
          children: [
            Icon(CupertinoIcons.add),
            SizedBox(width: 4.0),
            Text(
              'test',
              // style: TextStyle(
              //   color: isSelected ? Colors.white : Colors.black,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
