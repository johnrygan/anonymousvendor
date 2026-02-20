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
import 'appuser.dart' as _i2;
import 'orderStatus.dart' as _i3;

abstract class Order implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = OrderTable();

  static const db = OrderRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'totalAmount': totalAmount,
      'status': status.toJson(),
      'deliveryAddress': deliveryAddress,
      'latitude': latitude,
      'longitude': longitude,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static OrderInclude include({_i2.AppUserInclude? user}) {
    return OrderInclude._(user: user);
  }

  static OrderIncludeList includeList({
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    OrderInclude? include,
  }) {
    return OrderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Order.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Order.t),
      include: include,
    );
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

class OrderTable extends _i1.Table<int?> {
  OrderTable({super.tableRelation}) : super(tableName: 'order') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    totalAmount = _i1.ColumnDouble(
      'totalAmount',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byIndex,
    );
    deliveryAddress = _i1.ColumnString(
      'deliveryAddress',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
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

  late final _i1.ColumnInt userId;

  _i2.AppUserTable? _user;

  late final _i1.ColumnDouble totalAmount;

  late final _i1.ColumnEnum<_i3.OrderStatus> status;

  late final _i1.ColumnString deliveryAddress;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.AppUserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Order.t.userId,
      foreignField: _i2.AppUser.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AppUserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        totalAmount,
        status,
        deliveryAddress,
        latitude,
        longitude,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class OrderInclude extends _i1.IncludeObject {
  OrderInclude._({_i2.AppUserInclude? user}) {
    _user = user;
  }

  _i2.AppUserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table<int?> get table => Order.t;
}

class OrderIncludeList extends _i1.IncludeList {
  OrderIncludeList._({
    _i1.WhereExpressionBuilder<OrderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Order.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Order.t;
}

class OrderRepository {
  const OrderRepository._();

  final attachRow = const OrderAttachRowRepository._();

  final detachRow = const OrderDetachRowRepository._();

  /// Returns a list of [Order]s matching the given query parameters.
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
  Future<List<Order>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.find<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Order] matching the given query parameters.
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
  Future<Order?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.findFirstRow<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Order] by its [id] or null if no such row exists.
  Future<Order?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.findById<Order>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Order]s in the list and returns the inserted rows.
  ///
  /// The returned [Order]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Order>> insert(
    _i1.Session session,
    List<Order> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Order>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Order] and returns the inserted row.
  ///
  /// The returned [Order] will have its `id` field set.
  Future<Order> insertRow(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Order>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Order]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Order>> update(
    _i1.Session session,
    List<Order> rows, {
    _i1.ColumnSelections<OrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Order>(
      rows,
      columns: columns?.call(Order.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Order]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Order> updateRow(
    _i1.Session session,
    Order row, {
    _i1.ColumnSelections<OrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Order>(
      row,
      columns: columns?.call(Order.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Order]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Order>> delete(
    _i1.Session session,
    List<Order> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Order>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Order].
  Future<Order> deleteRow(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Order>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Order>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Order>(
      where: where(Order.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Order>(
      where: where?.call(Order.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class OrderAttachRowRepository {
  const OrderAttachRowRepository._();

  /// Creates a relation between the given [Order] and [AppUser]
  /// by setting the [Order]'s foreign key `userId` to refer to the [AppUser].
  Future<void> user(
    _i1.Session session,
    Order order,
    _i2.AppUser user, {
    _i1.Transaction? transaction,
  }) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $order = order.copyWith(userId: user.id);
    await session.db.updateRow<Order>(
      $order,
      columns: [Order.t.userId],
      transaction: transaction,
    );
  }
}

class OrderDetachRowRepository {
  const OrderDetachRowRepository._();

  /// Detaches the relation between this [Order] and the [AppUser] set in `user`
  /// by setting the [Order]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.Session session,
    Order order, {
    _i1.Transaction? transaction,
  }) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $order = order.copyWith(userId: null);
    await session.db.updateRow<Order>(
      $order,
      columns: [Order.t.userId],
      transaction: transaction,
    );
  }
}
