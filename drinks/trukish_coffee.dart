import 'drink.dart';

class TurkishCoffee extends Drink {
  TurkishCoffee() {
    description = "Turkish Coffee";
  }

  @override
  double cost() => 2.0;

  @override
  String getDescription() => description;
}
