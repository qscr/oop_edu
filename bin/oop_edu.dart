import 'package:oop_edu/oop_edu.dart' as oop_edu;

void main(List<String> arguments) {
  print('Hello world: ${oop_edu.calculate()}!');

  final stack = Stack<String>();

  stack.push("(");
  stack.push("(");
  stack.push("(");
  stack.push(")");

  print(stack.pop());
  print("");
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
