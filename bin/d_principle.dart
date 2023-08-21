// D - Dependency Inversion Principle - принцип инверсии зависимостей.
// Модули верхнего уровня не должны зависеть от модулей нижнего уровня.
// И те, и другие должны зависеть от абстракций.
// Абстракции не должны зависеть от деталей. Детали должны зависеть от абстракций.

abstract class Car {
  final CarEngine engine;

  Car(this.engine);

  void run() {}

  void stop() {}
}

abstract class Mechanic {
  final MechanicEngine engine;

  Mechanic(this.engine);
}

abstract class CarEngine {
  void start() {}

  void stop() {}
}

abstract class MechanicEngine {
  void open() {}
}

class CarImpl implements Car {
  @override
  final CarEngine engine;

  CarImpl(this.engine);

  @override
  void run() {
    // some logic
    engine.start();
    // some logic
  }

  @override
  void stop() {
    // some logic
    engine.stop();
    // some logic
  }
}

class CarEngineImpl implements CarEngine {
  @override
  void start() {
    // TODO: implement start
  }

  @override
  void stop() {
    // TODO: implement stop
  }

  @override
  void open() {
    // TODO: implement open
  }
}

class MechanicImpl implements Mechanic {
  @override
  final MechanicEngine engine;

  MechanicImpl(this.engine);
}

class MechanicEngineImpl implements MechanicEngine {
  @override
  void open() {
    // TODO: implement open
  }
}

void main() {
  final engineForMechanic = MechanicEngineImpl();
  final mechanic = MechanicImpl(engineForMechanic);

  final engineForCar = CarEngineImpl();
  final car = CarImpl(engineForCar);
}
