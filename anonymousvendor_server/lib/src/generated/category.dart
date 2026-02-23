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

abstract class Category
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Category._({
    this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    this.userId,
    this.user,
  });

  factory Category({
    int? id,
    required String name,
    required String description,
    required DateTime createdAt,
    int? userId,
    _i2.AppUser? user,
  }) = _CategoryImpl;

  factory Category.fromJson(Map<String, dynamic> jsonSerialization) {
    return Category(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      userId: jsonSerialization['userId'] as int?,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.AppUser.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  static final t = CategoryTable();

  static const db = CategoryRepository._();

  @override
  int? id;

  String name;

  String description;

  DateTime createdAt;

  int? userId;

  _i2.AppUser? user;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Category]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Category copyWith({
    int? id,
    String? name,
    String? description,
    DateTime? createdAt,
    int? userId,
    _i2.AppUser? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'createdAt': createdAt.toJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'createdAt': createdAt.toJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
    };
  }

  static CategoryInclude include({_i2.AppUserInclude? user}) {
    return CategoryInclude._(user: user);
  }

  static CategoryIncludeList includeList({
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoryTable>? orderByList,
    CategoryInclude? include,
  }) {
    return CategoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Category.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Category.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CategoryImpl extends Category {
  _CategoryImpl({
    int? id,
    required String name,
    required String description,
    required DateTime createdAt,
    int? userId,
    _i2.AppUser? user,
  }) : super._(
          id: id,
          name: name,
          description: description,
          createdAt: createdAt,
          userId: userId,
          user: user,
        );

  /// Returns a shallow copy of this [Category]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Category copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    DateTime? createdAt,
    Object? userId = _Undefined,
    Object? user = _Undefined,
  }) {
    return Category(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.AppUser? ? user : this.user?.copyWith(),
    );
  }
}

class CategoryTable extends _i1.Table<int?> {
  CategoryTable({super.tableRelation}) : super(tableName: 'category') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnInt userId;

  _i2.AppUserTable? _user;

  _i2.AppUserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Category.t.userId,
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
        name,
        description,
        createdAt,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class CategoryInclude extends _i1.IncludeObject {
  CategoryInclude._({_i2.AppUserInclude? user}) {
    _user = user;
  }

  _i2.AppUserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table<int?> get table => Category.t;
}

class CategoryIncludeList extends _i1.IncludeList {
  CategoryIncludeList._({
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Category.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Category.t;
}

class CategoryRepository {
  const CategoryRepository._();

  final attachRow = const CategoryAttachRowRepository._();

  final detachRow = const CategoryDetachRowRepository._();

  /// Returns a list of [Category]s matching the given query parameters.
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
  Future<List<Category>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoryTable>? orderByList,
    _i1.Transaction? transaction,
    CategoryInclude? include,
  }) async {
    return session.db.find<Category>(
      where: where?.call(Category.t),
      orderBy: orderBy?.call(Category.t),
      orderByList: orderByList?.call(Category.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Category] matching the given query parameters.
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
  Future<Category?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<CategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoryTable>? orderByList,
    _i1.Transaction? transaction,
    CategoryInclude? include,
  }) async {
    return session.db.findFirstRow<Category>(
      where: where?.call(Category.t),
      orderBy: orderBy?.call(Category.t),
      orderByList: orderByList?.call(Category.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Category] by its [id] or null if no such row exists.
  Future<Category?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    CategoryInclude? include,
  }) async {
    return session.db.findById<Category>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Category]s in the list and returns the inserted rows.
  ///
  /// The returned [Category]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Category>> insert(
    _i1.Session session,
    List<Category> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Category>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Category] and returns the inserted row.
  ///
  /// The returned [Category] will have its `id` field set.
  Future<Category> insertRow(
    _i1.Session session,
    Category row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Category>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Category]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Category>> update(
    _i1.Session session,
    List<Category> rows, {
    _i1.ColumnSelections<CategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Category>(
      rows,
      columns: columns?.call(Category.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Category]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Category> updateRow(
    _i1.Session session,
    Category row, {
    _i1.ColumnSelections<CategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Category>(
      row,
      columns: columns?.call(Category.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Category]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Category>> delete(
    _i1.Session session,
    List<Category> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Category>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Category].
  Future<Category> deleteRow(
    _i1.Session session,
    Category row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Category>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Category>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CategoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Category>(
      where: where(Category.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Category>(
      where: where?.call(Category.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class CategoryAttachRowRepository {
  const CategoryAttachRowRepository._();

  /// Creates a relation between the given [Category] and [AppUser]
  /// by setting the [Category]'s foreign key `userId` to refer to the [AppUser].
  Future<void> user(
    _i1.Session session,
    Category category,
    _i2.AppUser user, {
    _i1.Transaction? transaction,
  }) async {
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $category = category.copyWith(userId: user.id);
    await session.db.updateRow<Category>(
      $category,
      columns: [Category.t.userId],
      transaction: transaction,
    );
  }
}

class CategoryDetachRowRepository {
  const CategoryDetachRowRepository._();

  /// Detaches the relation between this [Category] and the [AppUser] set in `user`
  /// by setting the [Category]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.Session session,
    Category category, {
    _i1.Transaction? transaction,
  }) async {
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }

    var $category = category.copyWith(userId: null);
    await session.db.updateRow<Category>(
      $category,
      columns: [Category.t.userId],
      transaction: transaction,
    );
  }
}
