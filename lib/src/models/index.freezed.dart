// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get profileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call({String uid, String email, String displayName, String? profileUrl});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? profileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$CopyWith(
          _$AppUser$ value, $Res Function(_$AppUser$) then) =
      __$$AppUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String displayName, String? profileUrl});
}

/// @nodoc
class __$$AppUser$CopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUser$>
    implements _$$AppUser$CopyWith<$Res> {
  __$$AppUser$CopyWithImpl(_$AppUser$ _value, $Res Function(_$AppUser$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? profileUrl = freezed,
  }) {
    return _then(_$AppUser$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$(
      {required this.uid,
      required this.email,
      required this.displayName,
      this.profileUrl});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? profileUrl;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, displayName: $displayName, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUser$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, displayName, profileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      __$$AppUser$CopyWithImpl<_$AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(
      this,
    );
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid,
      required final String email,
      required final String displayName,
      final String? profileUrl}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get profileUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return AuthState$.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  AppUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthState$CopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$AuthState$CopyWith(
          _$AuthState$ value, $Res Function(_$AuthState$) then) =
      __$$AuthState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser? user});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthState$CopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthState$>
    implements _$$AuthState$CopyWith<$Res> {
  __$$AuthState$CopyWithImpl(
      _$AuthState$ _value, $Res Function(_$AuthState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthState$(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthState$ implements AuthState$ {
  const _$AuthState$({this.user});

  factory _$AuthState$.fromJson(Map<String, dynamic> json) =>
      _$$AuthState$FromJson(json);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'AuthState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthState$ &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthState$CopyWith<_$AuthState$> get copyWith =>
      __$$AuthState$CopyWithImpl<_$AuthState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthState$ToJson(
      this,
    );
  }
}

abstract class AuthState$ implements AuthState {
  const factory AuthState$({final AppUser? user}) = _$AuthState$;

  factory AuthState$.fromJson(Map<String, dynamic> json) =
      _$AuthState$.fromJson;

  @override
  AppUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthState$CopyWith<_$AuthState$> get copyWith =>
      throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AuthState get auth => throw _privateConstructorUsedError;
  Set<String> get pendingActions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AuthState auth, Set<String> pendingActions});

  $AuthStateCopyWith<$Res> get auth;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? pendingActions = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      pendingActions: null == pendingActions
          ? _value.pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res> get auth {
    return $AuthStateCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(
          _$AppState$ value, $Res Function(_$AppState$) then) =
      __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthState auth, Set<String> pendingActions});

  @override
  $AuthStateCopyWith<$Res> get auth;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(
      _$AppState$ _value, $Res Function(_$AppState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? pendingActions = null,
  }) {
    return _then(_$AppState$(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      pendingActions: null == pendingActions
          ? _value._pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.auth = const AuthState(),
      final Set<String> pendingActions = const <String>{}})
      : _pendingActions = pendingActions;

  factory _$AppState$.fromJson(Map<String, dynamic> json) =>
      _$$AppState$FromJson(json);

  @override
  @JsonKey()
  final AuthState auth;
  final Set<String> _pendingActions;
  @override
  @JsonKey()
  Set<String> get pendingActions {
    if (_pendingActions is EqualUnmodifiableSetView) return _pendingActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pendingActions);
  }

  @override
  String toString() {
    return 'AppState(auth: $auth, pendingActions: $pendingActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            (identical(other.auth, auth) || other.auth == auth) &&
            const DeepCollectionEquality()
                .equals(other._pendingActions, _pendingActions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, auth, const DeepCollectionEquality().hash(_pendingActions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AuthState auth, final Set<String> pendingActions}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  AuthState get auth;
  @override
  Set<String> get pendingActions;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductState _$ProductStateFromJson(Map<String, dynamic> json) {
  return ProductState$.fromJson(json);
}

/// @nodoc
mixin _$ProductState {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductState$CopyWith<$Res> {
  factory _$$ProductState$CopyWith(
          _$ProductState$ value, $Res Function(_$ProductState$) then) =
      __$$ProductState$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductState$CopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductState$>
    implements _$$ProductState$CopyWith<$Res> {
  __$$ProductState$CopyWithImpl(
      _$ProductState$ _value, $Res Function(_$ProductState$) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ProductState$ implements ProductState$ {
  const _$ProductState$();

  factory _$ProductState$.fromJson(Map<String, dynamic> json) =>
      _$$ProductState$FromJson(json);

  @override
  String toString() {
    return 'ProductState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductState$);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductState$ToJson(
      this,
    );
  }
}

abstract class ProductState$ implements ProductState {
  const factory ProductState$() = _$ProductState$;

  factory ProductState$.fromJson(Map<String, dynamic> json) =
      _$ProductState$.fromJson;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product$.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String image,
      double price,
      String categoryId,
      String vendorId});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? price = null,
    Object? categoryId = null,
    Object? vendorId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Product$CopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$Product$CopyWith(
          _$Product$ value, $Res Function(_$Product$) then) =
      __$$Product$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String image,
      double price,
      String categoryId,
      String vendorId});
}

/// @nodoc
class __$$Product$CopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$Product$>
    implements _$$Product$CopyWith<$Res> {
  __$$Product$CopyWithImpl(_$Product$ _value, $Res Function(_$Product$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? price = null,
    Object? categoryId = null,
    Object? vendorId = null,
  }) {
    return _then(_$Product$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Product$ implements Product$ {
  const _$Product$(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price,
      required this.categoryId,
      required this.vendorId});

  factory _$Product$.fromJson(Map<String, dynamic> json) =>
      _$$Product$FromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String image;
  @override
  final double price;
  @override
  final String categoryId;
  @override
  final String vendorId;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, image: $image, price: $price, categoryId: $categoryId, vendorId: $vendorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Product$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, image, price, categoryId, vendorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Product$CopyWith<_$Product$> get copyWith =>
      __$$Product$CopyWithImpl<_$Product$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Product$ToJson(
      this,
    );
  }
}

abstract class Product$ implements Product {
  const factory Product$(
      {required final String id,
      required final String title,
      required final String description,
      required final String image,
      required final double price,
      required final String categoryId,
      required final String vendorId}) = _$Product$;

  factory Product$.fromJson(Map<String, dynamic> json) = _$Product$.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get image;
  @override
  double get price;
  @override
  String get categoryId;
  @override
  String get vendorId;
  @override
  @JsonKey(ignore: true)
  _$$Product$CopyWith<_$Product$> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category$.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String id, String title, String icon, List<Product> products});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Category$CopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$Category$CopyWith(
          _$Category$ value, $Res Function(_$Category$) then) =
      __$$Category$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String icon, List<Product> products});
}

/// @nodoc
class __$$Category$CopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$Category$>
    implements _$$Category$CopyWith<$Res> {
  __$$Category$CopyWithImpl(
      _$Category$ _value, $Res Function(_$Category$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = null,
    Object? products = null,
  }) {
    return _then(_$Category$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Category$ implements Category$ {
  const _$Category$(
      {required this.id,
      required this.title,
      required this.icon,
      required final List<Product> products})
      : _products = products;

  factory _$Category$.fromJson(Map<String, dynamic> json) =>
      _$$Category$FromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String icon;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Category(id: $id, title: $title, icon: $icon, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Category$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, icon,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Category$CopyWith<_$Category$> get copyWith =>
      __$$Category$CopyWithImpl<_$Category$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Category$ToJson(
      this,
    );
  }
}

abstract class Category$ implements Category {
  const factory Category$(
      {required final String id,
      required final String title,
      required final String icon,
      required final List<Product> products}) = _$Category$;

  factory Category$.fromJson(Map<String, dynamic> json) = _$Category$.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get icon;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$Category$CopyWith<_$Category$> get copyWith =>
      throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return Vendor$.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call({String id, String name, String image, String description});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Vendor$CopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$Vendor$CopyWith(_$Vendor$ value, $Res Function(_$Vendor$) then) =
      __$$Vendor$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String image, String description});
}

/// @nodoc
class __$$Vendor$CopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$Vendor$>
    implements _$$Vendor$CopyWith<$Res> {
  __$$Vendor$CopyWithImpl(_$Vendor$ _value, $Res Function(_$Vendor$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$Vendor$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Vendor$ implements Vendor$ {
  const _$Vendor$(
      {required this.id,
      required this.name,
      required this.image,
      required this.description});

  factory _$Vendor$.fromJson(Map<String, dynamic> json) =>
      _$$Vendor$FromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Vendor$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Vendor$CopyWith<_$Vendor$> get copyWith =>
      __$$Vendor$CopyWithImpl<_$Vendor$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Vendor$ToJson(
      this,
    );
  }
}

abstract class Vendor$ implements Vendor {
  const factory Vendor$(
      {required final String id,
      required final String name,
      required final String image,
      required final String description}) = _$Vendor$;

  factory Vendor$.fromJson(Map<String, dynamic> json) = _$Vendor$.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$Vendor$CopyWith<_$Vendor$> get copyWith =>
      throw _privateConstructorUsedError;
}
