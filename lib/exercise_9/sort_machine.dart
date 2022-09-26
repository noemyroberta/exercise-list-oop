import 'sort_real_list.dart';
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
    int lenStringList = stringList.length;

    for (int i = 0; i < lenStringList; i++) {
      SortStringList.sort(stringList);
    }

    return stringList;
  }

  static List _sortRealList() {
    List realList = defaultList;

    SortRealList.sort(realList);
    return realList;
  }
}
