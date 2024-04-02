import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SideHeader extends ConsumerWidget {
  const SideHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onBack() {
      context.go('/');
    }

    return Row(
      children: [
        CupertinoButton(
            child: Icon(CupertinoIcons.arrow_turn_up_left), onPressed: onBack)
      ],
    );
  }
}
