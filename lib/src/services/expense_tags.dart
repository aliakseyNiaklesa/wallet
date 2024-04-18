import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/tag.dart';

class ExpenseTags extends StateNotifier<List<Tag>> {
  ExpenseTags()
      : super([
          Tag(
            uuid: '3a183bf2-37a1-4ae4-a01c-771bb9aa83db',
            title: 'Food',
            icon: CupertinoIcons.home,
          ),
          Tag(
              uuid: 'd175f1a8-f400-4bdc-851b-3ec59a66d297',
              title: 'Extra Food',
              icon: CupertinoIcons.ant_fill),
          Tag(
              uuid: 'be01cb77-f755-42c4-b51b-22f291b9516b',
              title: 'Odi',
              icon: CupertinoIcons.ant)
        ]);

  void updateTag(String uuid) {
    state = List.of(state);
  }
}

final expenseTagsProvider =
    StateNotifierProvider<ExpenseTags, List<Tag>>((ref) {
  return ExpenseTags();
});
