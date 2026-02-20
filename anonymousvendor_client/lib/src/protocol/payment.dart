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
import 'appuser.dart' as _i3;

abstract class Payment implements _i1.SerializableModel {
  Payment._({
    this.id,
    this.orderId,
    this.order,
    this.userId,
    this.user,
    required this.amount,
    required this.currency,
    required this.method,
    required this.status,
    this.transactionRef,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Payment({
    int? id,
    int? orderId,
    _i2.Order? order,
    int? userId,
    _i3.AppUser? user,
    required double amount,
    required String currency,
    required String method,
    required String status,
    String? transactionRef,
    String? metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _PaymentImpl;

  factory Payment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Payment(
      id: jsonSerialization['id'] as int?,
      orderId: jsonSerialization['orderId'] as int?,
      order: jsonSerialization['order'] == null
          ? null
          : _i2.Order.fromJson(
              (jsonSerialization['order'] as Map<String, dynamic>)),
      userId: jsonSerialization['userId'] as int?,
      user: jsonSerialization['user'] == null
          ? null
          : _i3.AppUser.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      amount: (jsonSerialization['amount'] as num).toDouble(),
      currency: jsonSerialization['currency'] as String,
      method: jsonSerialization['method'] as String,
      status: jsonSerialization['status'] as String,
      transactionRef: jsonSerialization['transactionRef'] as String?,
      metadata: jsonSerialization['metadata'] as String?,
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

  int? orderId;

  _i2.Order? order;

  int? userId;

  _i3.AppUser? user;

  double amount;

  String currency;

  String method;

  String status;

  String? transactionRef;

  String? metadata;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Payment copyWith({
    int? id,
    int? orderId,
    _i2.Order? order,
    int? userId,
    _i3.AppUser? user,
    double? amount,
    String? currency,
    String? method,
    String? status,
    String? transactionRef,
    String? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (orderId != null) 'orderId': orderId,
      if (order != null) 'order': order?.toJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'amount': amount,
      'currency': currency,
      'method': method,
      'status': status,
      if (transactionRef != null) 'transactionRef': transactionRef,
      if (metadata != null) 'metadata': metadata,
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

class _PaymentImpl extends Payment {
  _PaymentImpl({
    int? id,
    int? orderId,
    _i2.Order? order,
    int? userId,
    _i3.AppUser? user,
    required double amount,
    required String currency,
    required String method,
    required String status,
    String? transactionRef,
    String? metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          orderId: orderId,
          order: order,
          userId: userId,
          user: user,
          amount: amount,
          currency: currency,
          method: method,
          status: status,
          transactionRef: transactionRef,
          metadata: metadata,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Payment copyWith({
    Object? id = _Undefined,
    Object? orderId = _Undefined,
    Object? order = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    double? amount,
    String? currency,
    String? method,
    String? status,
    Object? transactionRef = _Undefined,
    Object? metadata = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Payment(
      id: id is int? ? id : this.id,
      orderId: orderId is int? ? orderId : this.orderId,
      order: order is _i2.Order? ? order : this.order?.copyWith(),
      userId: userId is int? ? userId : this.userId,
      user: user is _i3.AppUser? ? user : this.user?.copyWith(),
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      method: method ?? this.method,
      status: status ?? this.status,
      transactionRef:
          transactionRef is String? ? transactionRef : this.transactionRef,
      metadata: metadata is String? ? metadata : this.metadata,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
