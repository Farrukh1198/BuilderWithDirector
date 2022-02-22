enum CarType {saloon, suv, hatchback, fastback, coupe, universal}
enum CarClass {standard, business, premium}
enum CarColor {red, yellow, green, blue, black, white, grey}
enum CarTransmission {manual, automatic}


class Car {
  CarType type;
  CarClass carClass;
  CarColor color;
  CarTransmission transmission;
  int wheelsRadius;

  Car({
    this.type = CarType.saloon,
    this.carClass = CarClass.standard,
    this.color = CarColor.white,
    this.transmission = CarTransmission.manual,
    this.wheelsRadius = 15
  });

  @override
  String toString() {
    return 'Class of model: $carClass\nType of model: $type\nColor of model: $color\nTransmission of model: $transmission\nRadius of wheels: $wheelsRadius inches\n';
  }
  
}

abstract class Builder {
  void setType();
  void paint();
  void setTransmission();
  void setWheels();
  Car getCar();
}

class StandardCarBuilder implements Builder {
  late Car _car;

  StandardCarBuilder() {
    _car = Car(carClass: CarClass.standard);
  }
  
  @override
  void setType() {
    _car.type = CarType.saloon;
  }

  @override
  void paint() {
    _car.color = CarColor.white;
  }

  @override
  void setTransmission() {
    _car.transmission = CarTransmission.manual;
  }

  @override
  void setWheels() {
    _car.wheelsRadius = 15;
  }

  @override
  Car getCar() {
    return _car;
  }
}

class BusinessCarBuilder implements Builder {
  late Car _car;

  BusinessCarBuilder() {
    _car = Car(carClass: CarClass.business);
  }
  
  @override
  void setType() {
    _car.type = CarType.suv;
  }

  @override
  void paint() {
    _car.color = CarColor.grey;
  }

  @override
  void setTransmission() {
    _car.transmission = CarTransmission.automatic;
  }

  @override
  void setWheels() {
    _car.wheelsRadius = 18;
  }

  @override
  Car getCar() {
    return _car;
  }
}

class PremiumCarBuilder implements Builder {
  late Car _car;

  PremiumCarBuilder() {
    _car = Car(carClass: CarClass.premium);
  }
  
  @override
  void setType() {
    _car.type = CarType.coupe;
  }

  @override
  void paint() {
    _car.color = CarColor.black;
  }

  @override
  void setTransmission() {
    _car.transmission = CarTransmission.automatic;
  }

  @override
  void setWheels() {
    _car.wheelsRadius = 21;
  }

  @override
  Car getCar() {
    return _car;
  }
}

class Director {
  Builder? _builder;
  
  Director([this._builder]);

  set builder(Builder builder) => _builder = builder;

  void manufactureCar() {
    _builder?.setType();
    _builder?.paint();
    _builder?.setTransmission();
    _builder?.setWheels();
  }
}