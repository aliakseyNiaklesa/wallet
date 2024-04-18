import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/models/tag.dart';

class IncomeTags extends StateNotifier<List<Tag>> {
  IncomeTags()
      : super([
          Tag(
            uuid: '3a183bf2-37a2-4ae4-a01c-771bb9aa83db',
            title: 'Salary',
            icon: CupertinoIcons.heart_circle,
          ),
          Tag(
              uuid: 'd175f1a8-f400-4bdc-851b-3rc59a66d297',
              title: 'Friend',
              icon: CupertinoIcons.chevron_left_square),
          Tag(
              uuid: 'be01cb77-f755-42c4-b11b-22f291b9516b',
              title: 'Business',
              icon: CupertinoIcons.arrow_clockwise_circle_fill)
        ]);

  void updateTag(String uuid) {

    state = List.of(state);
  }
}

final incomeTagsProvider = StateNotifierProvider<IncomeTags, List<Tag>>((ref) {
  return IncomeTags();
});
