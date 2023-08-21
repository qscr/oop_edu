// O - Open closed Principle - принцип открытости-закрытости.
// Классы должны быть открыты для расширения, но закрыты для изменения.

import 's_principle.dart';

abstract class PrintService {
  void printOrder(Order order);
}

class TestPrintService implements PrintService {
  @override
  void printOrder(Order order) {
    print("test print");
  }
}

class ConsolePrintService implements PrintService {
  @override
  void printOrder(Order order) {
    print("order");
  }
}

class EmailPrintService implements PrintService {
  @override
  void printOrder(Order order) {
    // send to email
  }
}

class SmsPrintService implements PrintService {
  @override
  void printOrder(Order order) {
    // send to sms
  }
}

class PhysicPrintService implements PrintService {
  @override
  void printOrder(Order order) {
    // send to sms
  }
}
