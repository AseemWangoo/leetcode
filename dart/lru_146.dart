/**
 * Intro to DLL 
 * https://youtu.be/mcKGKBVHUOM
 *  */

// https://youtu.be/z9bJUPxzFOw
void main() {
  LRUCache lru = LRUCache(2);
  lru.put(1, 1); // cache = {1=1}
  lru.put(2, 2); // cache = {1=1, 2=2}
  print(lru.get(1)); // returns 1
  lru.put(3, 3); // evicts key 2
  print(lru.get(2)); // returns -1 (not found)
  lru.put(4, 4); // evicts key 1
  print(lru.get(1)); // returns -1 (not found)
  print(lru.get(3)); // returns 3
  print(lru.get(4)); // returns 4
}

class DLinkedNode {
  int key;
  int value;
  DLinkedNode? prev;
  DLinkedNode? next;

  DLinkedNode(this.key, this.value);
}

class LRUCache {
  final int capacity;
  late Map<int, DLinkedNode> map;
  late DLinkedNode head;
  late DLinkedNode tail;
  int size = 0;

  LRUCache(this.capacity) {
    map = {};
    head = DLinkedNode(0, 0);
    tail = DLinkedNode(0, 0);
    head.next = tail;
    tail.prev = head;
  }

  int get(int key) {
    if (!map.containsKey(key)) return -1;

    DLinkedNode node = map[key]!;
    _moveToHead(node);
    return node.value;
  }

  void put(int key, int value) {
    if (map.containsKey(key)) {
      DLinkedNode node = map[key]!;
      node.value = value;
      _moveToHead(node);
    } else {
      DLinkedNode newNode = DLinkedNode(key, value);
      map[key] = newNode;
      _addToHead(newNode);
      size++;

      if (size > capacity) {
        DLinkedNode tailNode = _removeTail();
        map.remove(tailNode.key);
        size--;
      }
    }
  }

  void _addToHead(DLinkedNode node) {
    node.prev = head;
    node.next = head.next;
    head.next!.prev = node;
    head.next = node;
  }

  void _removeNode(DLinkedNode node) {
    node.prev!.next = node.next;
    node.next!.prev = node.prev;
  }

  void _moveToHead(DLinkedNode node) {
    _removeNode(node);
    _addToHead(node);
  }

  DLinkedNode _removeTail() {
    DLinkedNode res = tail.prev!;
    _removeNode(res);
    return res;
  }
}
