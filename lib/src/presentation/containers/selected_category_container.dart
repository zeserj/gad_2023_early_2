part of 'index.dart';

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({super.key, required this.builder});

  final ViewModelBuilder<Category> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Category>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.products.categories
            .firstWhere((Category category) => category.id == store.state.products.selectedCategoryId);
      },
    );
  }
}
