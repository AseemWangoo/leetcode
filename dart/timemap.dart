void main() {
  TimeMap timeMap = TimeMap();
  timeMap.set("foo", "bar", 1);
  print(timeMap.get("foo", 1)); // bar
  print(timeMap.get("foo", 3)); // bar
  timeMap.set("foo", "bar2", 4);
  print(timeMap.get("foo", 4)); // bar2
  print(timeMap.get("foo", 5)); // bar2
}

class TimeValue {
  final int timestamp;
  final String value;

  TimeValue(this.timestamp, this.value);
}

class TimeMap {
  final Map<String, List<TimeValue>> _store = {};

  void set(String key, String value, int timestamp) {
    _store.putIfAbsent(key, () => []);
    _store[key]!.add(TimeValue(timestamp, value));
  }

  String get(String key, int timestamp) {
    if (!_store.containsKey(key)) return '';

    List<TimeValue> values = _store[key]!;
    int left = 0;
    int right = values.length - 1;
    String result = '';

    while (left <= right) {
      int mid = left + ((right - left) >> 1);
      if (values[mid].timestamp == timestamp) {
        return values[mid].value;
      } else if (values[mid].timestamp < timestamp) {
        result = values[mid].value; // Candidate
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return result;
  }
}
