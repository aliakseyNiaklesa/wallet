import 'package:flutter_riverpod/flutter_riverpod.dart';

class Budget extends StateNotifier<int> {
  Budget() : super(0);

  void plus(int mount) {
    state = state + mount;
  }

  void minus(int mount) {
    state = state - mount;
  }
}

final budgetProvider = StateNotifierProvider<Budget, int>((ref) {
  return Budget();
});
