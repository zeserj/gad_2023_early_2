part of '../index.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String title,
    required String icon,
    required List<Product> products,
}) = Category$;

  factory Category.fromJson(Map<dynamic, dynamic> json) => _$CategoryFromJson(Map<String, dynamic>.from(json));
}
