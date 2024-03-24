import 'package:flutter_riverpod/flutter_riverpod.dart';

enum WAY { income, expense }

class Way extends StateNotifier<WAY> {
  Way() : super(WAY.expense);

  setIncome() { // remove ? 
    state = WAY.income;
  }

  setExpense() { // remove ? 
    state = WAY.expense;
  }

  setWay(WAY way) {
    state = way;
  }
}

final wayProvider = StateNotifierProvider<Way, WAY>((ref) => Way());
