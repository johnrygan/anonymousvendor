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

abstract class Review implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Review._({
    this.id,
    this.userId,
    this.user,
    required this.rating,
    required this.comment,
    this.createdAt,
  });

  factory Review({
    int? id,
    int? userId,
    _i2.AppUser? user,
    required int rating,
    required String comment,
    DateTime? createdAt,
  }) = _ReviewImpl;

  factory Review.fromJson(Map<String, dynamic> jsonSerialization) {
    return Review(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.AppUser.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      rating: jsonSerialization['rating'] as int,
      comment: jsonSerialization['comment'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = ReviewTable();

  static const db = ReviewRepository._();

  @override
  int? id;

  int? userId;

  _i2.AppUser? user;

  int rating;

  String comment;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Review]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Review copyWith({
    int? id,
    int? userId,
    _i2.AppUser? user,
    int? rating,
    String? comment,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'rating': rating,
      'comment': comment,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'rating': rating,
      'comment': comment,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static ReviewInclude include({_i2.AppUserInclude? user}) {
    return ReviewInclude._(user: user);
  }

  static ReviewIncludeList includeList({
    _i1.WhereExpressionBuilder<ReviewTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReviewTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReviewTable>? orderByList,
    ReviewInclude? include,
  }) {
    return ReviewIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Review.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Review.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReviewImpl extends Review {
  _ReviewImpl({
    int? id,
    int? userId,
    _i2.AppUser? user,
    required int rating,
    required String comment,
    DateTime? createdAt,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          rating: rating,
          comment: comment,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [Review]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Review copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    int? rating,
    String? comment,
    Object? createdAt = _Undefined,
  }) {
    return Review(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.AppUser? ? user : this.user?.copyWith(),
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class ReviewTable extends _i1.Table<int?> {
  ReviewTable({super.tableRelation}) : super(tableName: 'review') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    rating = _i1.ColumnInt(
      'rating',
      this,
    );
    comment = _i1.ColumnString(
      'comment',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.AppUserTable? _user;

  late final _i1.ColumnInt rating;

  late final _i1.ColumnString comment;

  late final _i1.ColumnDateTime createdAt;

  _i2.AppUserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Review.t.userId,
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
        rating,
        comment,
        createdAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class ReviewInclude extends _i1.IncludeObject {
  ReviewInclude._({_i2.AppUserInclude? user}) {
    _user = user;
  }

  _i2.AppUserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table<int?> get table => Review.t;
}

class ReviewIncludeList extends _i1.IncludeList {
  ReviewIncludeList._({
    _i1.WhereExpressionBuilder<ReviewTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Review.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Review.t;
}

class ReviewRepository {
  const ReviewRepository._();

  final attachRow = const ReviewAttachRowRepository._();

  final detachRow = const ReviewDetachRowRepository._();

  /// Returns a list of [Review]s matching the given query parameters.
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
  Future<List<Review>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReviewTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReviewTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReviewTable>? orderByList,
    _i1.Transaction? transaction,
    ReviewInclude? include,
  }) async {
    return session.db.find<Review>(
      where: where?.call(Review.t),
      orderBy: orderBy?.call(Review.t),
      orderByList: orderByList?.call(Review.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Review] matching the given query parameters.
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
  Future<Review?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReviewTable>? where,
    int? offset,
    _i1.OrderByBuilder<ReviewTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReviewTable>? orderByList,
    _i1.Transaction? transaction,
    ReviewInclude? include,
  }) async {
    return session.db.findFirstRow<Review>(
      where: where?.call(Review.t),
      orderBy: orderBy?.call(Review.t),
      orderByList: orderByList?.call(Review.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Review] by its [id] or null if no such row exists.
  Future<Review?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ReviewInclude? include,
  }) async {
    return session.db.findById<Review>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Review]s in the list and returns the inserted rows.
  ///
  /// The returned [Review]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Review>> insert(
    _i1.Session session,
    List<Review> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Review>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Review] and returns the inserted row.
  ///
  /// The returned [Review] will have its `id` field set.
  Future<Review> insertRow(
    _i1.Session session,
    Review row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Review>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Review]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Review>> update(
    _i1.Session session,
    List<Review> rows, {
    _i1.ColumnSelections<ReviewTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Review>(
      rows,
      columns: columns?.call(Review.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Review]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Review> updateRow(
    _i1.Session session,
    Review row, {
    _i1.ColumnSelections<ReviewTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Review>(
      row,
      columns: columns?.call(Review.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Review]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Review>> delete(
    _i1.Session session,
    List<Review> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Review>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Review].
  Future<Review> deleteRow(
    _i1.Session session,
    Review row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Review>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Review>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ReviewTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Review>(
      where: where(Review.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReviewTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Review>(
      where: where?.call(Review.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ReviewAttachRowRepository {
  const ReviewAttachRowRepository._();

  /// Creates a relation between the given [Review] and [AppUser]
  /// by setting the [Review]'s foreign key `userId` to refer to the [AppUser].
  Future<void> user(
    _i1.Session session,
    Review review,
    _i2.AppUser user, {
    _i1.Transaction? transaction,
  }) async {
    if (review.id == null) {
      throw ArgumentError.notNull('review.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $review = review.copyWith(userId: user.id);
    await session.db.updateRow<Review>(
      $review,
      columns: [Review.t.userId],
      transaction: transaction,
    );
  }
}

class ReviewDetachRowRepository {
  const ReviewDetachRowRepository._();

  /// Detaches the relation between this [Review] and the [AppUser] set in `user`
  /// by setting the [Review]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.Session session,
    Review review, {
    _i1.Transaction? transaction,
  }) async {
    if (review.id == null) {
      throw ArgumentError.notNull('review.id');
    }

    var $review = review.copyWith(userId: null);
    await session.db.updateRow<Review>(
      $review,
      columns: [Review.t.userId],
      transaction: transaction,
    );
  }
}
