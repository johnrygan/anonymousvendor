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
import 'userRole.dart' as _i2;

abstract class AppUser implements _i1.SerializableModel {
  AppUser._({
    this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.passwordHash,
    required this.role,
    required this.longitude,
    required this.latitude,
    required this.isActive,
    required this.isVerified,
    this.createdAt,
  });

  factory AppUser({
    int? id,
    required String name,
    required String email,
    required String phone,
    required String passwordHash,
    required _i2.UserRole role,
    required double longitude,
    required double latitude,
    required bool isActive,
    required bool isVerified,
    DateTime? createdAt,
  }) = _AppUserImpl;

  factory AppUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return AppUser(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      email: jsonSerialization['email'] as String,
      phone: jsonSerialization['phone'] as String,
      passwordHash: jsonSerialization['passwordHash'] as String,
      role: _i2.UserRole.fromJson((jsonSerialization['role'] as int)),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      isActive: jsonSerialization['isActive'] as bool,
      isVerified: jsonSerialization['isVerified'] as bool,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String email;

  String phone;

  String passwordHash;

  _i2.UserRole role;

  double longitude;

  double latitude;

  bool isActive;

  bool isVerified;

  DateTime? createdAt;

  /// Returns a shallow copy of this [AppUser]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AppUser copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? passwordHash,
    _i2.UserRole? role,
    double? longitude,
    double? latitude,
    bool? isActive,
    bool? isVerified,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'passwordHash': passwordHash,
      'role': role.toJson(),
      'longitude': longitude,
      'latitude': latitude,
      'isActive': isActive,
      'isVerified': isVerified,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AppUserImpl extends AppUser {
  _AppUserImpl({
    int? id,
    required String name,
    required String email,
    required String phone,
    required String passwordHash,
    required _i2.UserRole role,
    required double longitude,
    required double latitude,
    required bool isActive,
    required bool isVerified,
    DateTime? createdAt,
  }) : super._(
          id: id,
          name: name,
          email: email,
          phone: phone,
          passwordHash: passwordHash,
          role: role,
          longitude: longitude,
          latitude: latitude,
          isActive: isActive,
          isVerified: isVerified,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [AppUser]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AppUser copyWith({
    Object? id = _Undefined,
    String? name,
    String? email,
    String? phone,
    String? passwordHash,
    _i2.UserRole? role,
    double? longitude,
    double? latitude,
    bool? isActive,
    bool? isVerified,
    Object? createdAt = _Undefined,
  }) {
    return AppUser(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      passwordHash: passwordHash ?? this.passwordHash,
      role: role ?? this.role,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      isActive: isActive ?? this.isActive,
      isVerified: isVerified ?? this.isVerified,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
