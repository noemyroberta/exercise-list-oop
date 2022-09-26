import 'package:answers_list_poo/exercise_9/sort_real_list.dart';

import 'sort_string_list.dart';

class SortMachine {
  static List<dynamic> defaultList = [];
  static List<String> stringList = _identifyStringChar();
  static List<dynamic> sortedList = [];

  static void runSort() {
    _removeStringChar();
    sortedList.addAll(_sortStringList());
    sortedList.addAll(_sortRealList());
  }

  static List<String> _identifyStringChar() {
    final stringCharacters = defaultList.whereType<String>();
    List<String> stringList = [
      for (String char in stringCharacters) char.toString()
    ];

    return stringList;
  }

  static void _removeStringChar() {
    [for (String char in stringList) defaultList.remove(char)];
  }

  static List<String> _sortStringList() {
    List<String> strSortedList = [];
    int N = stringList.length;

    for (int i = 0; i < N; i++) {
      strSortedList = SortStringList.sort(stringList);
    }

    return strSortedList;
  }

  static List _sortRealList() {
    List realList = defaultList;

    SortRealList.sort(realList);
    return realList;
  }
}
