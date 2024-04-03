import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO: should be object and could User profile ???
class Budget extends StateNotifier<int> {
  Budget() : super(0);

  void add(int mount) {
    state = state + mount;
  }

  void remove(int mount) {
    state = state - mount;
  }
}

final budgetProvider = StateNotifierProvider<Budget, int>((ref) {
  return Budget();
});
