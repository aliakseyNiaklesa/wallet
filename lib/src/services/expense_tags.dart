import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/tag.dart';

class ExpenseTags extends StateNotifier<List<Tag>> {
  ExpenseTags()
      : super([
          Tag(
            uuid: '3a183bf2-37a1-4ae4-a01c-771bb9aa83db',
            title: 'title 1-1',
            icon: CupertinoIcons.add_circled,
          ),
          Tag(
              uuid: 'd175f1a8-f400-4bdc-851b-3ec59a66d297',
              title: 'title 2',
              icon: CupertinoIcons.asterisk_circle),
          Tag(
              uuid: 'be01cb77-f755-42c4-b51b-22f291b9516b',
              title: 'title 3',
              icon: CupertinoIcons.asterisk_circle)
        ]);

  void updateTag(String uuid) {
    final tag = state.firstWhere((tag) => tag.uuid == uuid);
    tag.isSelected = !tag.isSelected;

    state = List.of(state);
  }
}

final expenseTagsProvider =
    StateNotifierProvider<ExpenseTags, List<Tag>>((ref) {
  return ExpenseTags();
});
