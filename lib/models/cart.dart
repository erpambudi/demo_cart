import 'package:demo_cart/models/product.dart';

class Cart {
  int id;
  Product product;
  int quantity;

  Cart({
    required this.id,
    required this.product,
    required this.quantity,
  });
}
