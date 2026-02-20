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

abstract class Review implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  _i2.AppUser? user;

  int rating;

  String comment;

  DateTime? createdAt;

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
