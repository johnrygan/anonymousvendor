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
import 'category.dart' as _i3;
import 'imageFile.dart' as _i4;

abstract class Product
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ProductTable();

  static const db = ProductRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      if (categoryId != null) 'categoryId': categoryId,
      if (category != null) 'category': category?.toJsonForProtocol(),
      'name': name,
      'description': description,
      'price': price,
      if (images != null)
        'images': images?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'stock': stock,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static ProductInclude include({
    _i2.AppUserInclude? user,
    _i3.CategoryInclude? category,
    _i4.ImageFileIncludeList? images,
  }) {
    return ProductInclude._(
      user: user,
      category: category,
      images: images,
    );
  }

  static ProductIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    ProductInclude? include,
  }) {
    return ProductIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Product.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Product.t),
      include: include,
    );
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

class ProductTable extends _i1.Table<int?> {
  ProductTable({super.tableRelation}) : super(tableName: 'product') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    categoryId = _i1.ColumnInt(
      'categoryId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    price = _i1.ColumnDouble(
      'price',
      this,
    );
    stock = _i1.ColumnInt(
      'stock',
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

  late final _i1.ColumnInt categoryId;

  _i3.CategoryTable? _category;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnDouble price;

  _i4.ImageFileTable? ___images;

  _i1.ManyRelation<_i4.ImageFileTable>? _images;

  late final _i1.ColumnInt stock;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.AppUserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Product.t.userId,
      foreignField: _i2.AppUser.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.AppUserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.CategoryTable get category {
    if (_category != null) return _category!;
    _category = _i1.createRelationTable(
      relationFieldName: 'category',
      field: Product.t.categoryId,
      foreignField: _i3.Category.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.CategoryTable(tableRelation: foreignTableRelation),
    );
    return _category!;
  }

  _i4.ImageFileTable get __images {
    if (___images != null) return ___images!;
    ___images = _i1.createRelationTable(
      relationFieldName: '__images',
      field: Product.t.id,
      foreignField: _i4.ImageFile.t.$_productImagesProductId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.ImageFileTable(tableRelation: foreignTableRelation),
    );
    return ___images!;
  }

  _i1.ManyRelation<_i4.ImageFileTable> get images {
    if (_images != null) return _images!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'images',
      field: Product.t.id,
      foreignField: _i4.ImageFile.t.$_productImagesProductId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.ImageFileTable(tableRelation: foreignTableRelation),
    );
    _images = _i1.ManyRelation<_i4.ImageFileTable>(
      tableWithRelations: relationTable,
      table: _i4.ImageFileTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _images!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        categoryId,
        name,
        description,
        price,
        stock,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'category') {
      return category;
    }
    if (relationField == 'images') {
      return __images;
    }
    return null;
  }
}

class ProductInclude extends _i1.IncludeObject {
  ProductInclude._({
    _i2.AppUserInclude? user,
    _i3.CategoryInclude? category,
    _i4.ImageFileIncludeList? images,
  }) {
    _user = user;
    _category = category;
    _images = images;
  }

  _i2.AppUserInclude? _user;

  _i3.CategoryInclude? _category;

  _i4.ImageFileIncludeList? _images;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'category': _category,
        'images': _images,
      };

  @override
  _i1.Table<int?> get table => Product.t;
}

class ProductIncludeList extends _i1.IncludeList {
  ProductIncludeList._({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Product.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Product.t;
}

class ProductRepository {
  const ProductRepository._();

  final attach = const ProductAttachRepository._();

  final attachRow = const ProductAttachRowRepository._();

  final detach = const ProductDetachRepository._();

  final detachRow = const ProductDetachRowRepository._();

  /// Returns a list of [Product]s matching the given query parameters.
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
  Future<List<Product>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.db.find<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Product] matching the given query parameters.
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
  Future<Product?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.db.findFirstRow<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Product] by its [id] or null if no such row exists.
  Future<Product?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.db.findById<Product>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Product]s in the list and returns the inserted rows.
  ///
  /// The returned [Product]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Product>> insert(
    _i1.Session session,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Product>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Product] and returns the inserted row.
  ///
  /// The returned [Product] will have its `id` field set.
  Future<Product> insertRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Product>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Product]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Product>> update(
    _i1.Session session,
    List<Product> rows, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Product>(
      rows,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Product]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Product> updateRow(
    _i1.Session session,
    Product row, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Product>(
      row,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Product]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Product>> delete(
    _i1.Session session,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Product].
  Future<Product> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Product>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Product>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where?.call(Product.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ProductAttachRepository {
  const ProductAttachRepository._();

  /// Creates a relation between this [Product] and the given [ImageFile]s
  /// by setting each [ImageFile]'s foreign key `_productImagesProductId` to refer to this [Product].
  Future<void> images(
    _i1.Session session,
    Product product,
    List<_i4.ImageFile> imageFile, {
    _i1.Transaction? transaction,
  }) async {
    if (imageFile.any((e) => e.id == null)) {
      throw ArgumentError.notNull('imageFile.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $imageFile = imageFile
        .map((e) => _i4.ImageFileImplicit(
              e,
              $_productImagesProductId: product.id,
            ))
        .toList();
    await session.db.update<_i4.ImageFile>(
      $imageFile,
      columns: [_i4.ImageFile.t.$_productImagesProductId],
      transaction: transaction,
    );
  }
}

class ProductAttachRowRepository {
  const ProductAttachRowRepository._();

  /// Creates a relation between the given [Product] and [AppUser]
  /// by setting the [Product]'s foreign key `userId` to refer to the [AppUser].
  Future<void> user(
    _i1.Session session,
    Product product,
    _i2.AppUser user, {
    _i1.Transaction? transaction,
  }) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $product = product.copyWith(userId: user.id);
    await session.db.updateRow<Product>(
      $product,
      columns: [Product.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Product] and [Category]
  /// by setting the [Product]'s foreign key `categoryId` to refer to the [Category].
  Future<void> category(
    _i1.Session session,
    Product product,
    _i3.Category category, {
    _i1.Transaction? transaction,
  }) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }

    var $product = product.copyWith(categoryId: category.id);
    await session.db.updateRow<Product>(
      $product,
      columns: [Product.t.categoryId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [Product] and the given [ImageFile]
  /// by setting the [ImageFile]'s foreign key `_productImagesProductId` to refer to this [Product].
  Future<void> images(
    _i1.Session session,
    Product product,
    _i4.ImageFile imageFile, {
    _i1.Transaction? transaction,
  }) async {
    if (imageFile.id == null) {
      throw ArgumentError.notNull('imageFile.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $imageFile = _i4.ImageFileImplicit(
      imageFile,
      $_productImagesProductId: product.id,
    );
    await session.db.updateRow<_i4.ImageFile>(
      $imageFile,
      columns: [_i4.ImageFile.t.$_productImagesProductId],
      transaction: transaction,
    );
  }
}

class ProductDetachRepository {
  const ProductDetachRepository._();

  /// Detaches the relation between this [Product] and the given [ImageFile]
  /// by setting the [ImageFile]'s foreign key `_productImagesProductId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> images(
    _i1.Session session,
    List<_i4.ImageFile> imageFile, {
    _i1.Transaction? transaction,
  }) async {
    if (imageFile.any((e) => e.id == null)) {
      throw ArgumentError.notNull('imageFile.id');
    }

    var $imageFile = imageFile
        .map((e) => _i4.ImageFileImplicit(
              e,
              $_productImagesProductId: null,
            ))
        .toList();
    await session.db.update<_i4.ImageFile>(
      $imageFile,
      columns: [_i4.ImageFile.t.$_productImagesProductId],
      transaction: transaction,
    );
  }
}

class ProductDetachRowRepository {
  const ProductDetachRowRepository._();

  /// Detaches the relation between this [Product] and the [AppUser] set in `user`
  /// by setting the [Product]'s foreign key `userId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.Session session,
    Product product, {
    _i1.Transaction? transaction,
  }) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $product = product.copyWith(userId: null);
    await session.db.updateRow<Product>(
      $product,
      columns: [Product.t.userId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Product] and the [Category] set in `category`
  /// by setting the [Product]'s foreign key `categoryId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> category(
    _i1.Session session,
    Product product, {
    _i1.Transaction? transaction,
  }) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $product = product.copyWith(categoryId: null);
    await session.db.updateRow<Product>(
      $product,
      columns: [Product.t.categoryId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Product] and the given [ImageFile]
  /// by setting the [ImageFile]'s foreign key `_productImagesProductId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> images(
    _i1.Session session,
    _i4.ImageFile imageFile, {
    _i1.Transaction? transaction,
  }) async {
    if (imageFile.id == null) {
      throw ArgumentError.notNull('imageFile.id');
    }

    var $imageFile = _i4.ImageFileImplicit(
      imageFile,
      $_productImagesProductId: null,
    );
    await session.db.updateRow<_i4.ImageFile>(
      $imageFile,
      columns: [_i4.ImageFile.t.$_productImagesProductId],
      transaction: transaction,
    );
  }
}
