import 'package:demo_cart/providers/cart_provider.dart';
import 'package:demo_cart/widgets/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    Widget content() {
      return ListView(
        children: cartProvider.carts
            .map(
              (cart) => CartCard(
                cart: cart,
              ),
            )
            .toList(),
      );
    }

    Widget emptyCart() {
      return Container(
        child: Center(
          child: Text('Cart Masih Kosong.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: cartProvider.carts.length == 0 ? emptyCart() : content(),
      ),
    );
  }
}
