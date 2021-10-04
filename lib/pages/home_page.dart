import 'package:demo_cart/models/product.dart';
import 'package:demo_cart/pages/cart_page.dart';
import 'package:demo_cart/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: products
                .map(
                  (e) => Card(
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(e.name),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              cartProvider.addCart(e);
                            },
                            child: Text('Add To Cart'),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartPage()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
