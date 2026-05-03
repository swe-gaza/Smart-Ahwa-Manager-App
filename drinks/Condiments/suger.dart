import '../drink.dart';
import 'extra.dart';

class Suger extends Extra {
  Suger(Drink drink) {
    this.drink = drink;
  }

  @override
  double cost() {
    return 0.1 + drink.cost();
  }

  @override
  String getDescription() {
    return drink.getDescription() + ", with extra Sugar";
  }
}
