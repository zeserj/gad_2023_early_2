import 'package:flutter/material.dart';

import '../models/index.dart';
import 'containers/index.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CartContainer(
      builder: (BuildContext context, Cart cart) {
        return Stack(
          alignment: AlignmentDirectional.topEnd,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: const Icon(Icons.shopping_cart_outlined)),
            if (cart.items.isNotEmpty)
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Text('${cart.items.length}'),
                ),
              ),
          ],
        );
      },
    );
  }
}
