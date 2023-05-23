part of 'index.dart';

class SelectedProduct extends StatelessWidget {
  const SelectedProduct({super.key, required this.builder});

  final ViewModelBuilder<Product> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Product>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.products.products[store.state.products.selectedProductId]!;
      },
    );
  }
}
