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
import 'product.dart' as _i2;

abstract class ImageFile implements _i1.SerializableModel {
  ImageFile._({
    this.id,
    this.productId,
    this.product,
    required this.name,
    required this.path,
    required this.storageId,
    this.createdAt,
  });

  factory ImageFile({
    int? id,
    int? productId,
    _i2.Product? product,
    required String name,
    required String path,
    required String storageId,
    DateTime? createdAt,
  }) = _ImageFileImpl;

  factory ImageFile.fromJson(Map<String, dynamic> jsonSerialization) {
    return ImageFile(
      id: jsonSerialization['id'] as int?,
      productId: jsonSerialization['productId'] as int?,
      product: jsonSerialization['product'] == null
          ? null
          : _i2.Product.fromJson(
              (jsonSerialization['product'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      path: jsonSerialization['path'] as String,
      storageId: jsonSerialization['storageId'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? productId;

  _i2.Product? product;

  String name;

  String path;

  String storageId;

  DateTime? createdAt;

  /// Returns a shallow copy of this [ImageFile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ImageFile copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    String? name,
    String? path,
    String? storageId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (productId != null) 'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'name': name,
      'path': path,
      'storageId': storageId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ImageFileImpl extends ImageFile {
  _ImageFileImpl({
    int? id,
    int? productId,
    _i2.Product? product,
    required String name,
    required String path,
    required String storageId,
    DateTime? createdAt,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          name: name,
          path: path,
          storageId: storageId,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [ImageFile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ImageFile copyWith({
    Object? id = _Undefined,
    Object? productId = _Undefined,
    Object? product = _Undefined,
    String? name,
    String? path,
    String? storageId,
    Object? createdAt = _Undefined,
  }) {
    return ImageFile(
      id: id is int? ? id : this.id,
      productId: productId is int? ? productId : this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      name: name ?? this.name,
      path: path ?? this.path,
      storageId: storageId ?? this.storageId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
