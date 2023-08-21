// S - Single Responsibility Principle - принцип единственной ответственности.
// Каждый класс должен иметь только одну зону ответственности.

import 'o_principle.dart';

class Car {}

class Client {}

class Order {}

class FindCarService {
  Car findCar(String carNo) {
    //find car by number
    return Car();
  }
}

class OrderCarService {
  Order orderCar(String carNo, Client client) {
    //client order car
    return Order();
  }
}

class MessagesCarService {
  void sendMessage(String typeMessage, String message) {
    if (typeMessage.contains("email")) {
      //write email
    }
  }
}

class RentCarService {
  final FindCarService findService;

  final PrintService printService;

  final MessagesCarService messagesService;

  final OrderCarService orderService;

  RentCarService({
    required this.findService,
    required this.printService,
    required this.messagesService,
    required this.orderService,
  });

  Car findCar(String carNo) {
    return findService.findCar(carNo);
  }

  void printOrder(Order order) {
    // some logic
    printService.printOrder(order);
    // some logic
  }
}

void main(List<String> args) {
  final rentCarServiceForTest = RentCarService(
    findService: FindCarService(),
    printService: TestPrintService(),
    messagesService: MessagesCarService(),
    orderService: OrderCarService(),
  );

  rentCarServiceForTest.printOrder(Order());
}
