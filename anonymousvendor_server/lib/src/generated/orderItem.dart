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
import 'product.dart' as _i3;

abstract class OrderItem
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = OrderItemTable();

  static const db = OrderItemRepository._();

  @override
  int? id;

  int? orderId;

  _i2.Order? order;

  int? productId;

  _i3.Product? product;

  int quantity;

  double price;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (orderId != null) 'orderId': orderId,
      if (order != null) 'order': order?.toJsonForProtocol(),
      if (productId != null) 'productId': productId,
      if (product != null) 'product': product?.toJsonForProtocol(),
      'quantity': quantity,
      'price': price,
    };
  }

  static OrderItemInclude include({
    _i2.OrderInclude? order,
    _i3.ProductInclude? product,
  }) {
    return OrderItemInclude._(
      order: order,
      product: product,
    );
  }

  static OrderItemIncludeList includeList({
    _i1.WhereExpressionBuilder<OrderItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderItemTable>? orderByList,
    OrderItemInclude? include,
  }) {
    return OrderItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(OrderItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(OrderItem.t),
      include: include,
    );
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

class OrderItemTable extends _i1.Table<int?> {
  OrderItemTable({super.tableRelation}) : super(tableName: 'order_item') {
    orderId = _i1.ColumnInt(
      'orderId',
      this,
    );
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    quantity = _i1.ColumnInt(
      'quantity',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
  }

  late final _i1.ColumnInt orderId;

  _i2.OrderTable? _order;

  late final _i1.ColumnInt productId;

  _i3.ProductTable? _product;

  late final _i1.ColumnInt quantity;

  late final _i1.ColumnDouble price;

  _i2.OrderTable get order {
    if (_order != null) return _order!;
    _order = _i1.createRelationTable(
      relationFieldName: 'order',
      field: OrderItem.t.orderId,
      foreignField: _i2.Order.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.OrderTable(tableRelation: foreignTableRelation),
    );
    return _order!;
  }

  _i3.ProductTable get product {
    if (_product != null) return _product!;
    _product = _i1.createRelationTable(
      relationFieldName: 'product',
      field: OrderItem.t.productId,
      foreignField: _i3.Product.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.ProductTable(tableRelation: foreignTableRelation),
    );
    return _product!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        orderId,
        productId,
        quantity,
        price,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'order') {
      return order;
    }
    if (relationField == 'product') {
      return product;
    }
    return null;
  }
}

class OrderItemInclude extends _i1.IncludeObject {
  OrderItemInclude._({
    _i2.OrderInclude? order,
    _i3.ProductInclude? product,
  }) {
    _order = order;
    _product = product;
  }

  _i2.OrderInclude? _order;

  _i3.ProductInclude? _product;

  @override
  Map<String, _i1.Include?> get includes => {
        'order': _order,
        'product': _product,
      };

  @override
  _i1.Table<int?> get table => OrderItem.t;
}

class OrderItemIncludeList extends _i1.IncludeList {
  OrderItemIncludeList._({
    _i1.WhereExpressionBuilder<OrderItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(OrderItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => OrderItem.t;
}

class OrderItemRepository {
  const OrderItemRepository._();

  final attachRow = const OrderItemAttachRowRepository._();

  final detachRow = const OrderItemDetachRowRepository._();

  /// Returns a list of [OrderItem]s matching the given query parameters.
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
  Future<List<OrderItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderItemTable>? orderByList,
    _i1.Transaction? transaction,
    OrderItemInclude? include,
  }) async {
    return session.db.find<OrderItem>(
      where: where?.call(OrderItem.t),
      orderBy: orderBy?.call(OrderItem.t),
      orderByList: orderByList?.call(OrderItem.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [OrderItem] matching the given query parameters.
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
  Future<OrderItem?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrderItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderItemTable>? orderByList,
    _i1.Transaction? transaction,
    OrderItemInclude? include,
  }) async {
    return session.db.findFirstRow<OrderItem>(
      where: where?.call(OrderItem.t),
      orderBy: orderBy?.call(OrderItem.t),
      orderByList: orderByList?.call(OrderItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [OrderItem] by its [id] or null if no such row exists.
  Future<OrderItem?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OrderItemInclude? include,
  }) async {
    return session.db.findById<OrderItem>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [OrderItem]s in the list and returns the inserted rows.
  ///
  /// The returned [OrderItem]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<OrderItem>> insert(
    _i1.Session session,
    List<OrderItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<OrderItem>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [OrderItem] and returns the inserted row.
  ///
  /// The returned [OrderItem] will have its `id` field set.
  Future<OrderItem> insertRow(
    _i1.Session session,
    OrderItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<OrderItem>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [OrderItem]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<OrderItem>> update(
    _i1.Session session,
    List<OrderItem> rows, {
    _i1.ColumnSelections<OrderItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<OrderItem>(
      rows,
      columns: columns?.call(OrderItem.t),
      transaction: transaction,
    );
  }

  /// Updates a single [OrderItem]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<OrderItem> updateRow(
    _i1.Session session,
    OrderItem row, {
    _i1.ColumnSelections<OrderItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<OrderItem>(
      row,
      columns: columns?.call(OrderItem.t),
      transaction: transaction,
    );
  }

  /// Deletes all [OrderItem]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<OrderItem>> delete(
    _i1.Session session,
    List<OrderItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<OrderItem>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [OrderItem].
  Future<OrderItem> deleteRow(
    _i1.Session session,
    OrderItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<OrderItem>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<OrderItem>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrderItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<OrderItem>(
      where: where(OrderItem.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<OrderItem>(
      where: where?.call(OrderItem.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class OrderItemAttachRowRepository {
  const OrderItemAttachRowRepository._();

  /// Creates a relation between the given [OrderItem] and [Order]
  /// by setting the [OrderItem]'s foreign key `orderId` to refer to the [Order].
  Future<void> order(
    _i1.Session session,
    OrderItem orderItem,
    _i2.Order order, {
    _i1.Transaction? transaction,
  }) async {
    if (orderItem.id == null) {
      throw ArgumentError.notNull('orderItem.id');
    }
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $orderItem = orderItem.copyWith(orderId: order.id);
    await session.db.updateRow<OrderItem>(
      $orderItem,
      columns: [OrderItem.t.orderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [OrderItem] and [Product]
  /// by setting the [OrderItem]'s foreign key `productId` to refer to the [Product].
  Future<void> product(
    _i1.Session session,
    OrderItem orderItem,
    _i3.Product product, {
    _i1.Transaction? transaction,
  }) async {
    if (orderItem.id == null) {
      throw ArgumentError.notNull('orderItem.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $orderItem = orderItem.copyWith(productId: product.id);
    await session.db.updateRow<OrderItem>(
      $orderItem,
      columns: [OrderItem.t.productId],
      transaction: transaction,
    );
  }
}

class OrderItemDetachRowRepository {
  const OrderItemDetachRowRepository._();

  /// Detaches the relation between this [OrderItem] and the [Order] set in `order`
  /// by setting the [OrderItem]'s foreign key `orderId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> order(
    _i1.Session session,
    OrderItem orderitem, {
    _i1.Transaction? transaction,
  }) async {
    if (orderitem.id == null) {
      throw ArgumentError.notNull('orderitem.id');
    }

    var $orderitem = orderitem.copyWith(orderId: null);
    await session.db.updateRow<OrderItem>(
      $orderitem,
      columns: [OrderItem.t.orderId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [OrderItem] and the [Product] set in `product`
  /// by setting the [OrderItem]'s foreign key `productId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> product(
    _i1.Session session,
    OrderItem orderitem, {
    _i1.Transaction? transaction,
  }) async {
    if (orderitem.id == null) {
      throw ArgumentError.notNull('orderitem.id');
    }

    var $orderitem = orderitem.copyWith(productId: null);
    await session.db.updateRow<OrderItem>(
      $orderitem,
      columns: [OrderItem.t.productId],
      transaction: transaction,
    );
  }
}
