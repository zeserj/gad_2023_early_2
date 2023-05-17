part of '../index.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(<Product>[]) List<Product> products,
    @Default(<Vendor>[]) List<Vendor> vendors,
    @Default(<Category>[]) List<Category> categories,
    String? selectedCategoryId,
  }) = ProductsState$;

  factory ProductsState.fromJson(Map<dynamic, dynamic> json) => _$ProductsStateFromJson(Map<String, dynamic>.from(json));
}
