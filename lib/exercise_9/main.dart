import 'package:answers_list_poo/exercise_9/sort_machine.dart';

void main() {
  SortMachine.defaultList = [
    'a',
    1,
    2,
    'abacaxi',
    'abacate',
    1333,
    19248,
    '#1444'
  ];

  SortMachine.runSort();
  print(SortMachine.sortedList);
}
