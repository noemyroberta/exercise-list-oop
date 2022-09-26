class SortStringList {

  static void sort(List<String> defaultList) {
    int N = defaultList.length;
    int firstIndex = 0;
    int secondIndex = 1;

    while (secondIndex < N) {
      String firstVal = defaultList[firstIndex];
      String secondVal = defaultList[secondIndex];

      if (firstVal.compareTo(secondVal) > 0) {
        defaultList[firstIndex] = secondVal;
        defaultList[secondIndex] = firstVal;
      }

      firstIndex++;
      secondIndex++;
    }
  }
}
