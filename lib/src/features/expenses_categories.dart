import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/entities/tag_widget.dart';
import 'package:wallet/src/models/tag.dart';

class ExpensesCategories extends ConsumerWidget {
  List<TagWidget> tags;

  ExpensesCategories({Key? key, required this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(219, 22, 22, 100)),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Wrap(
          children: tags,
        ));
  }
}
