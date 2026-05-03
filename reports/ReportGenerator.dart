
import '../orders/order.dart'; //

class ReportGenerator {
  // دالة لعرض تفاصيل طلب واحد (التي كتبتها أنت)
void showOrderSummary(Order order) {
    print("====================================");
    print("☕ SMART AHWA ORDER #${order.orderId} ☕"); // إضافة الرقم في العنوان
    print("====================================");
    print("📌 Order Number: ${order.orderId}");      // أو إضافته هنا كسطر منفصل
    print("👤 Customer: ${order.customer.name}");
    print("💬 Interaction: ${order.customer.interact()}");
    print("------------------------------------");
    print("🥤 Item: ${order.drink.getDescription()}");
    print("📝 Instructions: ${order.specialInstructions}");
    print("💰 Price: ${order.drink.cost().toStringAsFixed(2)} EGP");
    print("------------------------------------");
    print("✅ Status: ${order.isCompleted ? 'COMPLETED' : 'PENDING'}");
    print("====================================\n");
  }
  // الدالة الجديدة التي طلبتها لحساب تقرير المبيعات الإجمالي
  void generateSalesReport(List<Order> allOrders) {
    double totalRevenue = 0;
    int completedCount = 0;
    Map<String, int> popularDrinks = {};

    // فلترة الطلبات المكتملة فقط للحسابات
    var completedOrders = allOrders.where((order) => order.isCompleted).toList();

    for (var order in completedOrders) {
      completedCount++;
      totalRevenue += order.drink.cost(); //

      // تتبع المشروبات الأكثر مبيعاً بناءً على وصفها الكامل
      String drinkName = order.drink.getDescription(); //
      popularDrinks[drinkName] = (popularDrinks[drinkName] ?? 0) + 1;
    }

    print("========= 📊 DAILY SALES REPORT =========");
    print("Total Orders Served: $completedCount");
    print("Total Revenue: \$${totalRevenue.toStringAsFixed(2)}");
    print("Popular Items Usage:");
    popularDrinks.forEach((name, count) {
      print("  - $name: $count times");
    });
    print("=========================================\n");
  }
}