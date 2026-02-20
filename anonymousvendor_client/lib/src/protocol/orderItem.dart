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
import 'order.dart' as _i2;
import 'product.dart' as _i3;

abstract class OrderItem implements _i1.SerializableModel {
  OrderItem._({
    this.id,
    this.orderId,
    this.order,
    this.productId,
    this.product,
    required this.quantity,
    required this.price,
  });

  factory OrderItem({
    int? id,
    int? orderId,
    _i2.Order? order,
    int? productId,
    _i3.Product? product,
    required int quantity,
    required double price,
  }) = _OrderItemImpl;

  factory OrderItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return OrderItem(
      id: jsonSerialization['id'] as int?,
      orderId: jsonSerialization['orderId'] as int?,
      order: jsonSerialization['order'] == null
          ? null
          : _i2.Order.fromJson(
              (jsonSerialization['order'] as Map<String, dynamic>)),
      productId: jsonSerialization['productId'] as int?,
      product: jsonSerialization['product'] == null
          ? null
          : _i3.Product.fromJson(
              (jsonSerialization['product'] as Map<String, dynamic>)),
      quantity: jsonSerialization['quantity'] as int,
      price: (jsonSerialization['price'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? orderId;

  _i2.Order? order;

  int? productId;

  _i3.Product? product;

  int quantity;

  double price;

  /// Returns a shallow copy of this [OrderItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  OrderItem copyWith({
    int? id,
    int? orderId,
    _i2.Order? order,
    int? productId,
    _i3.Product? product,
    int? quantity,
    double? price,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (orderId != null) 'orderId': orderId,
      if (order != null) 'order': order?.toJson(),
      if (productId != null) 'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'quantity': quantity,
      'price': price,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrderItemImpl extends OrderItem {
  _OrderItemImpl({
    int? id,
    int? orderId,
    _i2.Order? order,
    int? productId,
    _i3.Product? product,
    required int quantity,
    required double price,
  }) : super._(
          id: id,
          orderId: orderId,
          order: order,
          productId: productId,
          product: product,
          quantity: quantity,
          price: price,
        );

  /// Returns a shallow copy of this [OrderItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  OrderItem copyWith({
    Object? id = _Undefined,
    Object? orderId = _Undefined,
    Object? order = _Undefined,
    Object? productId = _Undefined,
    Object? product = _Undefined,
    int? quantity,
    double? price,
  }) {
    return OrderItem(
      id: id is int? ? id : this.id,
      orderId: orderId is int? ? orderId : this.orderId,
      order: order is _i2.Order? ? order : this.order?.copyWith(),
      productId: productId is int? ? productId : this.productId,
      product: product is _i3.Product? ? product : this.product?.copyWith(),
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}
