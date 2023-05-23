import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../actions/index.dart';
import '../models/index.dart';
import 'cart_button.dart';
import 'containers/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return CategoriesContainer(
          builder: (BuildContext context, List<Category> categories) {
            return Scaffold(
              appBar: AppBar(
                actions: <Widget>[
                  const CartButton(),
                  IconButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(const LogOutUser());
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      icon: const Icon(Icons.power_settings_new)),
                ],
                bottom: categories.isEmpty
                    ? null
                    : PreferredSize(
                        preferredSize: const Size.fromHeight(56.0),
                        child: SizedBox(
                          height: 56,
                          child: SelectedCategory(
                            builder: (BuildContext context, Category selectedCategory) {
                              return ListView(
                                scrollDirection: Axis.horizontal,
                                children: categories.map((Category category) {
                                  return ChoiceChip(
                                    label: Text(category.title),
                                    selected: selectedCategory.id == category.id,
                                    onSelected: (bool selected) {
                                      if (selected) {
                                        StoreProvider.of<AppState>(context)
                                          ..dispatch(SetCategory(category.id))
                                          ..dispatch(ListProducts.start(category.id));
                                      }
                                    },
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ),
                      ),
              ),
              body: PendingContainer(
                builder: (BuildContext context, Set<String> pending) {
                  if (pending.contains(ListProducts.pendingKey)) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return VendorsContainer(
                    builder: (BuildContext context, List<Vendor> vendors) {
                      return HomeProductsContainer(
                        builder: (BuildContext context, List<Product> products) {
                          return ListView.separated(
                            itemCount: products.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Product product = products[index];
                              final Vendor? vendor =
                                  vendors.firstWhereOrNull((Vendor vendor) => vendor.id == product.vendorId);

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  ListTile(
                                    leading: Image.network(
                                      product.image,
                                      fit: BoxFit.cover,
                                      width: 56.0,
                                      height: 56.0,
                                    ),
                                    title: Text('${product.title}${vendor == null ? '' : ' / ${vendor.name}'}'),
                                    subtitle: Text(product.description),
                                    onTap: () {
                                      StoreProvider.of<AppState>(context).dispatch(SetProduct(product.id));
                                      Navigator.pushNamed(context, '/product');
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.add_shopping_cart,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      StoreProvider.of<AppState>(context).dispatch(UpdateCart(product.id, add: true));
                                    },
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return const Divider();
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
