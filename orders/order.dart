import '../cutomers/cutomer.dart';
import '../drinks/drink.dart';

class Order {
  final int orderId;
  final Customer customer;
  final Drink drink;
  final String specialInstructions;
  final bool isCompleted;

  Order({
    required this.orderId,
    required this.customer,
    required this.drink,
    required this.specialInstructions,
    this.isCompleted = false,
  });

  Order copyWith({
    int? orderId,
    Customer? customer,
    Drink? drink,
    String? specialInstructions,
    bool? isCompleted,
  }) {
    return Order(
      orderId: orderId ?? this.orderId,
      customer: customer ?? this.customer,
      drink: drink ?? this.drink,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
