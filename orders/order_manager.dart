import '../cutomers/cutomer.dart';
import '../drinks/drink.dart';
import 'order.dart';

class OrderManager {
  final List<Order> _orders = [];
  int _idCounter = 1;
  List<Order> get allOrders => _orders;

  void addOrder(Customer customer, Drink drink, String instructions) {
    Order newOrder = Order(
      orderId: _idCounter++, ////// بعد اضاف الطلب الاول راح يزيد الرقم
      customer: customer,
      drink: drink,
      specialInstructions: instructions,
    );

    _orders.add(newOrder);
    print(
      "✅ Order #${newOrder.orderId} registered for: ${newOrder.customer.name}",
    );
  }

  void cancelOrder(int id) {
    // البحث عن موقع الطلب الذي يطابق هذا الرقم
    int index = _orders.indexWhere((id_order) => id_order.orderId == id);

    if (index != -1) {
      print(
        "❌ Canceling order #${_orders[index].orderId} for: ${_orders[index].customer.name}...",
      );
      _orders.removeAt(index);
      print("Order has been removed from the system.");
    } else {
      print("⚠️ Error: Order #$id not found.");
    }
  }

  // 3. جلب الطلبات المعلقة (لوحة التحكم)
  List<Order> getPendingOrders() {
    return _orders.where((order) => !order.isCompleted).toList();
  }
  void markOrderAsCompleted(int id) {
    // البحث عن الطلب بواسطة الرقم
    int index = _orders.indexWhere((id_order) => id_order.orderId == id);

    if (index != -1) {
      // تحديث الحالة باستخدام copyWith
      _orders[index] = _orders[index].copyWith(isCompleted: true);
      print("Order #$id is now completed.");
    } else {
      print("⚠️ Error: Order #$id not found.");
    }
  }
}
