import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/tag.dart';

class TagWidget extends ConsumerWidget {
  Tag tag;
  VoidCallback onClick;

  TagWidget(
      {Key? key,
      required this.tag,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onClick,
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
              color: tag.isSelected
                  ? CupertinoColors.quaternarySystemFill
                  : CupertinoColors.black,
            ),
            const SizedBox(width: 4.0),
            Text(
              tag.title,
              style: TextStyle(
                color: tag.isSelected
                    ? CupertinoColors.quaternarySystemFill
                    : CupertinoColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
