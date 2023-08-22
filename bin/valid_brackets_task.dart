void main(List<String> arguments) {
  print(Solution().isValid("[()[]{})"));
}

class Solution {
  bool isValid(String s) {
    final stack = CustomStack<String>();
    final sList = s.split('');

    for (var curBracket in sList) {
      if (curBracket == '(') {
        stack.push(')');
        continue;
      }

      if (curBracket == '[') {
        stack.push(']');
        continue;
      }

      if (curBracket == '{') {
        stack.push('}');
        continue;
      }

      if (stack.isEmpty || stack.pop() != curBracket) {
        return false;
      }
    }

    return stack.isEmpty;
  }
}

class Stack<E> {
  final _list = <E>[];

  void push(E value) => _list.add(value);

  E pop() => _list.removeLast();

  E get peek => _list.last;

  bool get isEmpty => _list.isEmpty;
  bool get isNotEmpty => _list.isNotEmpty;

  @override
  String toString() => _list.toString();
}

class CustomStack<T> {
  Node<T>? lastItem;

  T pop() {
    if (lastItem == null) {
      throw ("Стек пустой");
    }
    final lastItemValue = lastItem!.value;
    lastItem = lastItem!.prevValue;
    return lastItemValue;
  }

  void push(T value) {
    final newNode = Node(value: value);
    if (lastItem != null) {
      newNode.prevValue = lastItem;
    }
    lastItem = newNode;
  }

  bool get isEmpty => lastItem == null;
  bool get isNotEmpty => lastItem != null;

  @override
  String toString() => lastItem.toString();
}

class Node<T> {
  final T value;

  Node<T>? prevValue;

  Node({
    required this.value,
    this.prevValue,
  });
}
