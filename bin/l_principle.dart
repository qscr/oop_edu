// L - Liskov substitution Principle - принцип подстановки Барбары Лисков.
// Должна быть возможность вместо базового (родительского) типа (класса)
// подставить любой его подтип (класс-наследник), при этом работа программы не должна измениться.

class Account {
  double balance(String numberAccount) {
    //logic
    return 0.0;
  }

  void refill(String numberAccount, double sum) {
    //logic
  }
}

class PaymentAccount extends Account {
  void payment(String numberAccount, double sum) {
    print("payment success");
  }
}

class SalaryAccount extends PaymentAccount {}

class DepositAccount extends Account {}

void makeCommunalPayment(PaymentAccount account) {
  account.payment("fasdf", 10000);
}
