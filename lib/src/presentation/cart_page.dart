import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CartContainer(builder: (BuildContext context, Cart cart) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            cart.items.isEmpty ? 'No products' : '${cart.items.length} products',
          ),
        ),
        body: cart.items.isEmpty
            ? const Center(child: Text('Please buy something'))
            : ProductsContainer(
                builder: (BuildContext context, Map<String, Product> products) {
                  final String total = cart.items.fold(0.0, (double sum, CartItem item) {
                    final Product product = products[item.productId]!;
                    return sum + product.price * item.quantity;
                  }).toString();

                  return Column(
                    children: <Widget>[
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          itemCount: cart.items.length,
                          itemBuilder: (BuildContext context, int index) {
                            final CartItem item = cart.items[index];
                            final Product product = products[item.productId]!;

                            return Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Image.network(
                                    product.image,
                                    fit: BoxFit.cover,
                                    width: 56,
                                    height: 56,
                                  ),
                                  title: Text(product.title),
                                  trailing: Text('${product.price * item.quantity} lei'),
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {
                                        StoreProvider.of<AppState>(context)
                                            .dispatch(UpdateCart(item.productId, add: false));
                                      },
                                      icon: const Icon(Icons.remove_circle_outline),
                                    ),
                                    Text('${item.quantity}'),
                                    IconButton(
                                      onPressed: () {
                                        StoreProvider.of<AppState>(context)
                                            .dispatch(UpdateCart(item.productId, add: true));
                                      },
                                      icon: const Icon(Icons.add_circle_outline),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider();
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('$total lei'),
                        trailing: TextButton(
                          child: const Text('Order '),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  );
                },
              ),
      );
    });
  }
}
