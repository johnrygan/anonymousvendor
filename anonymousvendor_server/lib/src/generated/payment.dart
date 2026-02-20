/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'order.dart' as _i2;
import 'appuser.dart' as _i3;

abstract class Payment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PaymentTable();

  static const db = PaymentRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (orderId != null) 'orderId': orderId,
      if (order != null) 'order': order?.toJsonForProtocol(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
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

  static PaymentInclude include({
    _i2.OrderInclude? order,
    _i3.AppUserInclude? user,
  }) {
    return PaymentInclude._(
      order: order,
      user: user,
    );
  }

  static PaymentIncludeList includeList({
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaymentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentTable>? orderByList,
    PaymentInclude? include,
  }) {
    return PaymentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Payment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Payment.t),
      include: include,
    );
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

class PaymentTable extends _i1.Table<int?> {
  PaymentTable({super.tableRelation}) : super(tableName: 'payment') {
    orderId = _i1.ColumnInt(
      'orderId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    amount = _i1.ColumnDouble(
      'amount',
      this,
    );
    currency = _i1.ColumnString(
      'currency',
      this,
    );
    method = _i1.ColumnString(
      'method',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    transactionRef = _i1.ColumnString(
      'transactionRef',
      this,
    );
    metadata = _i1.ColumnString(
      'metadata',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnInt orderId;

  _i2.OrderTable? _order;

  late final _i1.ColumnInt userId;

  _i3.AppUserTable? _user;

  late final _i1.ColumnDouble amount;

  late final _i1.ColumnString currency;

  late final _i1.ColumnString method;

  late final _i1.ColumnString status;

  late final _i1.ColumnString transactionRef;

  late final _i1.ColumnString metadata;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.OrderTable get order {
    if (_order != null) return _order!;
    _order = _i1.createRelationTable(
      relationFieldName: 'order',
      field: Payment.t.orderId,
      foreignField: _i2.Order.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.OrderTable(tableRelation: foreignTableRelation),
    );
    return _order!;
  }

  _i3.AppUserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Payment.t.userId,
      foreignField: _i3.AppUser.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AppUserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        orderId,
        userId,
        amount,
        currency,
        method,
        status,
        transactionRef,
        metadata,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'order') {
      return order;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class PaymentInclude extends _i1.IncludeObject {
  PaymentInclude._({
    _i2.OrderInclude? order,
    _i3.AppUserInclude? user,
  }) {
    _order = order;
    _user = user;
  }

  _i2.OrderInclude? _order;

  _i3.AppUserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'order': _order,
        'user': _user,
      };

  @override
  _i1.Table<int?> get table => Payment.t;
}

class PaymentIncludeList extends _i1.IncludeList {
  PaymentIncludeList._({
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Payment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Payment.t;
}

class PaymentRepository {
  const PaymentRepository._();

  final attachRow = const PaymentAttachRowRepository._();

  final detachRow = const PaymentDetachRowRepository._();

  /// Returns a list of [Payment]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Payment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaymentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentTable>? orderByList,
    _i1.Transaction? transaction,
    PaymentInclude? include,
  }) async {
    return session.db.find<Payment>(
      where: where?.call(Payment.t),
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Payment] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Payment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? offset,
    _i1.OrderByBuilder<PaymentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentTable>? orderByList,
    _i1.Transaction? transaction,
    PaymentInclude? include,
  }) async {
    return session.db.findFirstRow<Payment>(
      where: where?.call(Payment.t),
      orderBy: orderBy?.call(Payment.t),
      orderByList: orderByList?.call(Payment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Payment] by its [id] or null if no such row exists.
  Future<Payment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    PaymentInclude? include,
  }) async {
    return session.db.findById<Payment>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Payment]s in the list and returns the inserted rows.
  ///
  /// The returned [Payment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Payment>> insert(
    _i1.Session session,
    List<Payment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Payment>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Payment] and returns the inserted row.
  ///
  /// The returned [Payment] will have its `id` field set.
  Future<Payment> insertRow(
    _i1.Session session,
    Payment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Payment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Payment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Payment>> update(
    _i1.Session session,
    List<Payment> rows, {
    _i1.ColumnSelections<PaymentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Payment>(
      rows,
      columns: columns?.call(Payment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Payment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Payment> updateRow(
    _i1.Session session,
    Payment row, {
    _i1.ColumnSelections<PaymentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Payment>(
      row,
      columns: columns?.call(Payment.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Payment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Payment>> delete(
    _i1.Session session,
    List<Payment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Payment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Payment].
  Future<Payment> deleteRow(
    _i1.Session session,
    Payment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Payment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Payment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PaymentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Payment>(
      where: where(Payment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaymentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Payment>(
      where: where?.call(Payment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class PaymentAttachRowRepository {
  const PaymentAttachRowRepository._();

  /// Creates a relation between the given [Payment] and [Order]
  /// by setting the [Payment]'s foreign key `orderId` to refer to the [Order].
  Future<void> order(
    _i1.Session session,
    Payment payment,
    _i2.Order order, {
    _i1.Transaction? transaction,
  }) async {
    if (payment.id == null) {
      throw ArgumentError.notNull('payment.id');
    }
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $payment = payment.copyWith(orderId: order.id);
    await session.db.updateRow<Payment>(
      $payment,
      columns: [Payment.t.orderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Payment] and [AppUser]
  /// by setting the [Payment]'s foreign key `userId` to refer to the [AppUser].
  Future<void> user(
    _i1.Session session,
    Payment payment,
    _i3.AppUser user, {
    _i1.Transaction? transaction,
  }) async {
    if (payment.id == null) {
      throw ArgumentError.notNull('payment.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $payment = payment.copyWith(userId: user.id);
    await session.db.updateRow<Payment>(
      $payment,
      columns: [Payment.t.userId],
      transaction: transaction,
    );
  }
}

class PaymentDetachRowRepository {
  const PaymentDetachRowRepository._();

  /// Detaches the relation between this [Payment] and the [Order] set in `order`
  /// by setting the [Payment]'s foreign key `orderId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> order(
    _i1.Session session,
    Payment payment, {
    _i1.Transaction? transaction,
  }) async {
    if (payment.id == null) {
      throw ArgumentError.notNull('payment.id');
    }

    var $payment = payment.copyWith(orderId: null);
    await session.db.updateRow<Payment>(
      $payment,
      columns: [Payment.t.orderId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Payment] and the [AppUser] set in `user`
  /// by setting the [Payment]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.Session session,
    Payment payment, {
    _i1.Transaction? transaction,
  }) async {
    if (payment.id == null) {
      throw ArgumentError.notNull('payment.id');
    }

    var $payment = payment.copyWith(userId: null);
    await session.db.updateRow<Payment>(
      $payment,
      columns: [Payment.t.userId],
      transaction: transaction,
    );
  }
}
