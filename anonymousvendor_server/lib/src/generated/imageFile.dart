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
import 'product.dart' as _i2;

abstract class ImageFile
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ImageFile._({
    this.id,
    this.productId,
    this.product,
    required this.name,
    required this.path,
    required this.storageId,
    this.createdAt,
  }) : _productImagesProductId = null;

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
    return ImageFileImplicit._(
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
      $_productImagesProductId:
          jsonSerialization['_productImagesProductId'] as int?,
    );
  }

  static final t = ImageFileTable();

  static const db = ImageFileRepository._();

  @override
  int? id;

  int? productId;

  _i2.Product? product;

  String name;

  String path;

  String storageId;

  DateTime? createdAt;

  final int? _productImagesProductId;

  @override
  _i1.Table<int?> get table => t;

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
      if (_productImagesProductId != null)
        '_productImagesProductId': _productImagesProductId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (productId != null) 'productId': productId,
      if (product != null) 'product': product?.toJsonForProtocol(),
      'name': name,
      'path': path,
      'storageId': storageId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static ImageFileInclude include({_i2.ProductInclude? product}) {
    return ImageFileInclude._(product: product);
  }

  static ImageFileIncludeList includeList({
    _i1.WhereExpressionBuilder<ImageFileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ImageFileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ImageFileTable>? orderByList,
    ImageFileInclude? include,
  }) {
    return ImageFileIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ImageFile.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ImageFile.t),
      include: include,
    );
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
    return ImageFileImplicit._(
      id: id is int? ? id : this.id,
      productId: productId is int? ? productId : this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      name: name ?? this.name,
      path: path ?? this.path,
      storageId: storageId ?? this.storageId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      $_productImagesProductId: this._productImagesProductId,
    );
  }
}

class ImageFileImplicit extends _ImageFileImpl {
  ImageFileImplicit._({
    int? id,
    int? productId,
    _i2.Product? product,
    required String name,
    required String path,
    required String storageId,
    DateTime? createdAt,
    int? $_productImagesProductId,
  })  : _productImagesProductId = $_productImagesProductId,
        super(
          id: id,
          productId: productId,
          product: product,
          name: name,
          path: path,
          storageId: storageId,
          createdAt: createdAt,
        );

  factory ImageFileImplicit(
    ImageFile imageFile, {
    int? $_productImagesProductId,
  }) {
    return ImageFileImplicit._(
      id: imageFile.id,
      productId: imageFile.productId,
      product: imageFile.product,
      name: imageFile.name,
      path: imageFile.path,
      storageId: imageFile.storageId,
      createdAt: imageFile.createdAt,
      $_productImagesProductId: $_productImagesProductId,
    );
  }

  @override
  final int? _productImagesProductId;
}

class ImageFileTable extends _i1.Table<int?> {
  ImageFileTable({super.tableRelation}) : super(tableName: 'image_file') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    path = _i1.ColumnString(
      'path',
      this,
    );
    storageId = _i1.ColumnString(
      'storageId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    $_productImagesProductId = _i1.ColumnInt(
      '_productImagesProductId',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  _i2.ProductTable? _product;

  late final _i1.ColumnString name;

  late final _i1.ColumnString path;

  late final _i1.ColumnString storageId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnInt $_productImagesProductId;

  _i2.ProductTable get product {
    if (_product != null) return _product!;
    _product = _i1.createRelationTable(
      relationFieldName: 'product',
      field: ImageFile.t.productId,
      foreignField: _i2.Product.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductTable(tableRelation: foreignTableRelation),
    );
    return _product!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        name,
        path,
        storageId,
        createdAt,
        $_productImagesProductId,
      ];

  @override
  List<_i1.Column> get managedColumns => [
        id,
        productId,
        name,
        path,
        storageId,
        createdAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'product') {
      return product;
    }
    return null;
  }
}

class ImageFileInclude extends _i1.IncludeObject {
  ImageFileInclude._({_i2.ProductInclude? product}) {
    _product = product;
  }

  _i2.ProductInclude? _product;

  @override
  Map<String, _i1.Include?> get includes => {'product': _product};

  @override
  _i1.Table<int?> get table => ImageFile.t;
}

class ImageFileIncludeList extends _i1.IncludeList {
  ImageFileIncludeList._({
    _i1.WhereExpressionBuilder<ImageFileTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ImageFile.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ImageFile.t;
}

class ImageFileRepository {
  const ImageFileRepository._();

  final attachRow = const ImageFileAttachRowRepository._();

  final detachRow = const ImageFileDetachRowRepository._();

  /// Returns a list of [ImageFile]s matching the given query parameters.
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
  Future<List<ImageFile>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ImageFileTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ImageFileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ImageFileTable>? orderByList,
    _i1.Transaction? transaction,
    ImageFileInclude? include,
  }) async {
    return session.db.find<ImageFile>(
      where: where?.call(ImageFile.t),
      orderBy: orderBy?.call(ImageFile.t),
      orderByList: orderByList?.call(ImageFile.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [ImageFile] matching the given query parameters.
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
  Future<ImageFile?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ImageFileTable>? where,
    int? offset,
    _i1.OrderByBuilder<ImageFileTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ImageFileTable>? orderByList,
    _i1.Transaction? transaction,
    ImageFileInclude? include,
  }) async {
    return session.db.findFirstRow<ImageFile>(
      where: where?.call(ImageFile.t),
      orderBy: orderBy?.call(ImageFile.t),
      orderByList: orderByList?.call(ImageFile.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [ImageFile] by its [id] or null if no such row exists.
  Future<ImageFile?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ImageFileInclude? include,
  }) async {
    return session.db.findById<ImageFile>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [ImageFile]s in the list and returns the inserted rows.
  ///
  /// The returned [ImageFile]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ImageFile>> insert(
    _i1.Session session,
    List<ImageFile> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ImageFile>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ImageFile] and returns the inserted row.
  ///
  /// The returned [ImageFile] will have its `id` field set.
  Future<ImageFile> insertRow(
    _i1.Session session,
    ImageFile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ImageFile>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ImageFile]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ImageFile>> update(
    _i1.Session session,
    List<ImageFile> rows, {
    _i1.ColumnSelections<ImageFileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ImageFile>(
      rows,
      columns: columns?.call(ImageFile.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ImageFile]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ImageFile> updateRow(
    _i1.Session session,
    ImageFile row, {
    _i1.ColumnSelections<ImageFileTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ImageFile>(
      row,
      columns: columns?.call(ImageFile.t),
      transaction: transaction,
    );
  }

  /// Deletes all [ImageFile]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ImageFile>> delete(
    _i1.Session session,
    List<ImageFile> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ImageFile>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ImageFile].
  Future<ImageFile> deleteRow(
    _i1.Session session,
    ImageFile row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ImageFile>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ImageFile>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ImageFileTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ImageFile>(
      where: where(ImageFile.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ImageFileTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ImageFile>(
      where: where?.call(ImageFile.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ImageFileAttachRowRepository {
  const ImageFileAttachRowRepository._();

  /// Creates a relation between the given [ImageFile] and [Product]
  /// by setting the [ImageFile]'s foreign key `productId` to refer to the [Product].
  Future<void> product(
    _i1.Session session,
    ImageFile imageFile,
    _i2.Product product, {
    _i1.Transaction? transaction,
  }) async {
    if (imageFile.id == null) {
      throw ArgumentError.notNull('imageFile.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $imageFile = imageFile.copyWith(productId: product.id);
    await session.db.updateRow<ImageFile>(
      $imageFile,
      columns: [ImageFile.t.productId],
      transaction: transaction,
    );
  }
}

class ImageFileDetachRowRepository {
  const ImageFileDetachRowRepository._();

  /// Detaches the relation between this [ImageFile] and the [Product] set in `product`
  /// by setting the [ImageFile]'s foreign key `productId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> product(
    _i1.Session session,
    ImageFile imagefile, {
    _i1.Transaction? transaction,
  }) async {
    if (imagefile.id == null) {
      throw ArgumentError.notNull('imagefile.id');
    }

    var $imagefile = imagefile.copyWith(productId: null);
    await session.db.updateRow<ImageFile>(
      $imagefile,
      columns: [ImageFile.t.productId],
      transaction: transaction,
    );
  }
}
