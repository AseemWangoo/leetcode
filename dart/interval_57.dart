import 'dart:math';

void main() {
  var intervals = [
    [1, 3],
    [6, 9],
  ];
  var newInterval = [2, 5];

  var result = insert(intervals, newInterval);
  print(result); // [[1,5],[6,9]]
}

List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
  List<List<int>> result = [];
  int i = 0;
  int n = intervals.length;

  // Add all intervals that come before the new interval
  while (i < n && intervals[i][1] < newInterval[0]) {
    result.add(intervals[i]);
    i++;
  }

  // Merge overlapping intervals
  while (i < n && intervals[i][0] <= newInterval[1]) {
    newInterval[0] = min(newInterval[0], intervals[i][0]);
    newInterval[1] = max(newInterval[1], intervals[i][1]);
    i++;
  }
  result.add(newInterval);

  // Add the remaining intervals
  while (i < n) {
    result.add(intervals[i]);
    i++;
  }

  return result;
}
