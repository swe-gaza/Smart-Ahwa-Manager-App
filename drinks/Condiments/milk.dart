import '../drink.dart';
import 'extra.dart';

class Milk extends Extra {
  Milk(Drink drink) {
    this.drink = drink;
  }

  @override
  double cost() {
    return 0.2 + drink.cost();
  }

  @override
  String getDescription() {
    return drink.getDescription() + ", with Milk";
  }
}
