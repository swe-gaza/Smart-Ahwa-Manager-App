import 'drink.dart';

class Tea extends Drink {
  Tea() {
    description = "Tea";
  }

  @override
  double cost() => 1.5;
  @override
  String getDescription() => description;
}
