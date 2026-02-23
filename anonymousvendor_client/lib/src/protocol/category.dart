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

abstract class Category implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String description;

  DateTime createdAt;

  int? userId;

  _i2.AppUser? user;

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
