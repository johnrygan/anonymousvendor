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
import 'orderStatus.dart' as _i3;

abstract class Order implements _i1.SerializableModel {
  Order._({
    this.id,
    this.userId,
    this.user,
    required this.totalAmount,
    required this.status,
    required this.deliveryAddress,
    required this.latitude,
    required this.longitude,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Order({
    int? id,
    int? userId,
    _i2.AppUser? user,
    required double totalAmount,
    required _i3.OrderStatus status,
    required String deliveryAddress,
    required double latitude,
    required double longitude,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _OrderImpl;

  factory Order.fromJson(Map<String, dynamic> jsonSerialization) {
    return Order(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.AppUser.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      status: _i3.OrderStatus.fromJson((jsonSerialization['status'] as int)),
      deliveryAddress: jsonSerialization['deliveryAddress'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
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

  double totalAmount;

  _i3.OrderStatus status;

  String deliveryAddress;

  double latitude;

  double longitude;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Order]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Order copyWith({
    int? id,
    int? userId,
    _i2.AppUser? user,
    double? totalAmount,
    _i3.OrderStatus? status,
    String? deliveryAddress,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'totalAmount': totalAmount,
      'status': status.toJson(),
      'deliveryAddress': deliveryAddress,
      'latitude': latitude,
      'longitude': longitude,
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

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    int? userId,
    _i2.AppUser? user,
    required double totalAmount,
    required _i3.OrderStatus status,
    required String deliveryAddress,
    required double latitude,
    required double longitude,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          totalAmount: totalAmount,
          status: status,
          deliveryAddress: deliveryAddress,
          latitude: latitude,
          longitude: longitude,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [Order]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Order copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    double? totalAmount,
    _i3.OrderStatus? status,
    String? deliveryAddress,
    double? latitude,
    double? longitude,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.AppUser? ? user : this.user?.copyWith(),
      totalAmount: totalAmount ?? this.totalAmount,
      status: status ?? this.status,
      deliveryAddress: deliveryAddress ?? this.deliveryAddress,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
