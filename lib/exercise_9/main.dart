import 'package:answers_list_poo/exercise_9/sort_machine.dart';

void main() {
  final list = ['a', 1, 2, 'abacaxi', 'abacate', 1333, 19248, '#1444'];
  SortMachine.defaultList = list;

  SortMachine.runSort();
  print(SortMachine.sortedList);
}