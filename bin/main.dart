import 'package:builder/car.dart';

void main() {
  Director director = Director();
  for(Builder model in <Builder>[StandardCarBuilder(), BusinessCarBuilder(), PremiumCarBuilder(),]) {
    director.builder = model;
    director.manufactureCar();
    print(model.getCar());
    print('***'*20+'\n');
  }
}
