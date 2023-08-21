// I -  Interface Segregation Principle - принцип разделения интерфейсов.
// Данный принцип обозначает, что не нужно заставлять клиента (класс)
// реализовывать интерфейс, который не имеет к нему отношения.

abstract class WebPayments {
  void payWebMoney();
}

abstract class CreditCardPayments {
  void payCreditCard();
}

abstract class PhoneNumberPayments {
  void payPhoneNumber();
}

class InternetPaymentService implements WebPayments, CreditCardPayments, PhoneNumberPayments {
  @override
  void payCreditCard() {
    // TODO: implement payCreditCard
  }

  @override
  void payPhoneNumber() {
    // TODO: implement payPhoneNumber
  }

  @override
  void payWebMoney() {
    // TODO: implement payWebMoney
  }
}

class TerminalPaymentService implements CreditCardPayments, PhoneNumberPayments {
  @override
  void payCreditCard() {
    // TODO: implement payCreditCard
  }

  @override
  void payPhoneNumber() {
    // TODO: implement payPhoneNumber
  }
}
