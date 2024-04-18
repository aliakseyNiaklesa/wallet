import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/tag.dart';
import 'package:wallet/src/services/expense_tags.dart';

class TagWidget extends ConsumerWidget {
  Tag tag;

  TagWidget({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    handleOnTab() {
      // final expenseTag =
      //     ref.read(expenseTagsProvider.notifier).updateTag(tag.uuid);
    }

    return GestureDetector(
      onTap: handleOnTab,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          // color: isSelected ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            Icon(
              tag.icon,
              color: true
                  ? CupertinoColors.activeBlue
                  : CupertinoColors.black,
            ),
            const SizedBox(width: 4.0),
            Text(
              tag.title,
              style: TextStyle(
                color: true
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
