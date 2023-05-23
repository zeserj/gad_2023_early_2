part of '../index.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(<String, Product>{}) Map<String, Product> products,
    @Default(<String>[]) List<String> productIds,
    @Default(<Vendor>[]) List<Vendor> vendors,
    @Default(<Category>[]) List<Category> categories,
    String? selectedCategoryId,
    String? selectedProductId,
  }) = ProductsState$;

  factory ProductsState.fromJson(Map<dynamic, dynamic> json) =>
      _$ProductsStateFromJson(Map<String, dynamic>.from(json));
}
