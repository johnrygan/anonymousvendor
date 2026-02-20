/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'appuser.dart' as _i2;
import 'category.dart' as _i3;
import 'imageFile.dart' as _i4;

abstract class Product implements _i1.SerializableModel {
  Product._({
    this.id,
    this.userId,
    this.user,
    this.categoryId,
    this.category,
    required this.name,
    required this.description,
    required this.price,
    this.images,
    required this.stock,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product({
    int? id,
    int? userId,
    _i2.AppUser? user,
    int? categoryId,
    _i3.Category? category,
    required String name,
    required String description,
    required double price,
    List<_i4.ImageFile>? images,
    required int stock,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.AppUser.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      categoryId: jsonSerialization['categoryId'] as int?,
      category: jsonSerialization['category'] == null
          ? null
          : _i3.Category.fromJson(
              (jsonSerialization['category'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      price: (jsonSerialization['price'] as num).toDouble(),
      images: (jsonSerialization['images'] as List?)
          ?.map((e) => _i4.ImageFile.fromJson((e as Map<String, dynamic>)))
          .toList(),
      stock: jsonSerialization['stock'] as int,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  _i2.AppUser? user;

  int? categoryId;

  _i3.Category? category;

  String name;

  String description;

  double price;

  List<_i4.ImageFile>? images;

  int stock;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Product copyWith({
    int? id,
    int? userId,
    _i2.AppUser? user,
    int? categoryId,
    _i3.Category? category,
    String? name,
    String? description,
    double? price,
    List<_i4.ImageFile>? images,
    int? stock,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      if (categoryId != null) 'categoryId': categoryId,
      if (category != null) 'category': category?.toJson(),
      'name': name,
      'description': description,
      'price': price,
      if (images != null)
        'images': images?.toJson(valueToJson: (v) => v.toJson()),
      'stock': stock,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    int? userId,
    _i2.AppUser? user,
    int? categoryId,
    _i3.Category? category,
    required String name,
    required String description,
    required double price,
    List<_i4.ImageFile>? images,
    required int stock,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          categoryId: categoryId,
          category: category,
          name: name,
          description: description,
          price: price,
          images: images,
          stock: stock,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Product copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? categoryId = _Undefined,
    Object? category = _Undefined,
    String? name,
    String? description,
    double? price,
    Object? images = _Undefined,
    int? stock,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.AppUser? ? user : this.user?.copyWith(),
      categoryId: categoryId is int? ? categoryId : this.categoryId,
      category:
          category is _i3.Category? ? category : this.category?.copyWith(),
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      images: images is List<_i4.ImageFile>?
          ? images
          : this.images?.map((e0) => e0.copyWith()).toList(),
      stock: stock ?? this.stock,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
