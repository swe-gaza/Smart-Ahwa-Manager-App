import 'drink.dart';

class Espresso extends Drink {
  Espresso() {
    description = "Espresso";
  }

  @override
  double cost() => 2.5;

  @override
  String getDescription() => description;
}
