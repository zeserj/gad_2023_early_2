import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'cart_button.dart';
import 'containers/index.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectedProduct(
      builder: (BuildContext context, Product product) {
        return Scaffold(
          appBar: AppBar(
            title: Text(product.title),
            actions: const <Widget>[
              CartButton(),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Image.network(product.image),
                  const SizedBox(height: 16),
                  Text(product.description),
                  const SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '${product.price} lei',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.add_shopping_cart,
              color: Colors.blue,
            ),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(UpdateCart(product.id, add: true));
              Navigator.pushNamed(context, '/cart');
            },
          ),
        );
      },
    );
  }
}
