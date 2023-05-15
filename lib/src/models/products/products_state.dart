part of '../index.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState() = ProductState$;

  factory ProductState.fromJson(Map<dynamic, dynamic> json) => _$ProductStateFromJson(Map<String, dynamic>.from(json));
}
