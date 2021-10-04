import 'package:demo_cart/models/cart.dart';
import 'package:demo_cart/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartCard extends StatelessWidget {
  final Cart cart;

  CartCard({required this.cart});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Card(
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(cart.product.name),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      cartProvider.removeCart(cart.id);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_remove.png',
                          width: 10,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Remove',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    cartProvider.addQuantity(cart.id);
                  },
                  child: Image.asset(
                    'assets/button_add.png',
                    width: 16,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  cart.quantity.toString(),
                ),
                SizedBox(
                  height: 2,
                ),
                GestureDetector(
                  onTap: () {
                    cartProvider.reduceQuantity(cart.id);
                  },
                  child: Image.asset(
                    'assets/button_min.png',
                    width: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
