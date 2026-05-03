import 'cutomers/chatty_customer.dart';
import 'cutomers/vip_customer.dart';
import 'drinks/tea.dart';
import 'drinks/esspresso.dart';
import 'drinks/trukish_coffee.dart';
import 'drinks/condiments/milk.dart';
import 'drinks/condiments/suger.dart';
import 'orders/order_manager.dart';
import 'reports/ReportGenerator.dart';

void main() {
  OrderManager myAhwa = OrderManager();
  ReportGenerator reportService = ReportGenerator();

  print("============================================");
  print("☕ Welcome to Smart Ahwa Manager System ☕");
  print("============================================\n");
  ///////////////////////////////////////////اضافة الزبون الاول

  myAhwa.addOrder(VipCustomer("Abood"), Milk(Tea()), "Extra hot, ya rais");

  myAhwa.addOrder(
    ChattyCustomer("Ali"),
    Suger(TurkishCoffee()),
    "With mint branch",
  );

  myAhwa.addOrder(VipCustomer("Sara"), Espresso(), "No sugar");

  print("\n--- Current Dashboard (Pending) ---");
  var pending = myAhwa.getPendingOrders(); //
  for (var order in pending) {
    reportService.showOrderSummary(order); //
  }

  print("\n--- Processing Orders... ---");
  myAhwa.markOrderAsCompleted(1); // إكمال طلب عبود
  myAhwa.markOrderAsCompleted(3); // إكمال طلب سارة
  myAhwa.cancelOrder(2); // إلغاء طلب علي

  print("\n");

  reportService.generateSalesReport(myAhwa.allOrders); //

  print("============================================");
  print("      End of Business Day - Happy Brewing!     ");
  print("============================================");
}
