import 'cutomer.dart';

class VipCustomer extends Customer {
  VipCustomer(String name) : super(name);

  @override
  String interact() {
    return "Hi MR, I'm $name! I'm VIPCustomer";
  }
}