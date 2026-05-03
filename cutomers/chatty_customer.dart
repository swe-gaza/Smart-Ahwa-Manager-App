import 'cutomer.dart';

class ChattyCustomer extends Customer {
  ChattyCustomer(String name) : super(name);

  @override
  String interact() {
    return "Hi, I'm $name! I'm ChattyCustomer";
  }
}