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
import 'category.dart' as _i3;
import 'currency.dart' as _i4;
import 'greeting.dart' as _i5;
import 'imageFile.dart' as _i6;
import 'order.dart' as _i7;
import 'orderItem.dart' as _i8;
import 'orderStatus.dart' as _i9;
import 'payment.dart' as _i10;
import 'paymentMethod.dart' as _i11;
import 'paymentStatus.dart' as _i12;
import 'product.dart' as _i13;
import 'review.dart' as _i14;
import 'userRole.dart' as _i15;
import 'package:anonymousvendor_client/src/protocol/appuser.dart' as _i16;
import 'package:anonymousvendor_client/src/protocol/category.dart' as _i17;
import 'package:anonymousvendor_client/src/protocol/imageFile.dart' as _i18;
import 'package:anonymousvendor_client/src/protocol/order.dart' as _i19;
import 'package:anonymousvendor_client/src/protocol/payment.dart' as _i20;
import 'package:anonymousvendor_client/src/protocol/product.dart' as _i21;
export 'appuser.dart';
export 'category.dart';
export 'currency.dart';
export 'greeting.dart';
export 'imageFile.dart';
export 'order.dart';
export 'orderItem.dart';
export 'orderStatus.dart';
export 'payment.dart';
export 'paymentMethod.dart';
export 'paymentStatus.dart';
export 'product.dart';
export 'review.dart';
export 'userRole.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.AppUser) {
      return _i2.AppUser.fromJson(data) as T;
    }
    if (t == _i3.Category) {
      return _i3.Category.fromJson(data) as T;
    }
    if (t == _i4.Currency) {
      return _i4.Currency.fromJson(data) as T;
    }
    if (t == _i5.Greeting) {
      return _i5.Greeting.fromJson(data) as T;
    }
    if (t == _i6.ImageFile) {
      return _i6.ImageFile.fromJson(data) as T;
    }
    if (t == _i7.Order) {
      return _i7.Order.fromJson(data) as T;
    }
    if (t == _i8.OrderItem) {
      return _i8.OrderItem.fromJson(data) as T;
    }
    if (t == _i9.OrderStatus) {
      return _i9.OrderStatus.fromJson(data) as T;
    }
    if (t == _i10.Payment) {
      return _i10.Payment.fromJson(data) as T;
    }
    if (t == _i11.PaymentMethod) {
      return _i11.PaymentMethod.fromJson(data) as T;
    }
    if (t == _i12.PaymentStatus) {
      return _i12.PaymentStatus.fromJson(data) as T;
    }
    if (t == _i13.Product) {
      return _i13.Product.fromJson(data) as T;
    }
    if (t == _i14.Review) {
      return _i14.Review.fromJson(data) as T;
    }
    if (t == _i15.UserRole) {
      return _i15.UserRole.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.AppUser?>()) {
      return (data != null ? _i2.AppUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Category?>()) {
      return (data != null ? _i3.Category.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Currency?>()) {
      return (data != null ? _i4.Currency.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Greeting?>()) {
      return (data != null ? _i5.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.ImageFile?>()) {
      return (data != null ? _i6.ImageFile.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Order?>()) {
      return (data != null ? _i7.Order.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.OrderItem?>()) {
      return (data != null ? _i8.OrderItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.OrderStatus?>()) {
      return (data != null ? _i9.OrderStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Payment?>()) {
      return (data != null ? _i10.Payment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.PaymentMethod?>()) {
      return (data != null ? _i11.PaymentMethod.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.PaymentStatus?>()) {
      return (data != null ? _i12.PaymentStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Product?>()) {
      return (data != null ? _i13.Product.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Review?>()) {
      return (data != null ? _i14.Review.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.UserRole?>()) {
      return (data != null ? _i15.UserRole.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i6.ImageFile>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.ImageFile>(e)).toList()
          : null) as T;
    }
    if (t == List<_i16.AppUser>) {
      return (data as List).map((e) => deserialize<_i16.AppUser>(e)).toList()
          as T;
    }
    if (t == List<_i17.Category>) {
      return (data as List).map((e) => deserialize<_i17.Category>(e)).toList()
          as T;
    }
    if (t == List<_i18.ImageFile>) {
      return (data as List).map((e) => deserialize<_i18.ImageFile>(e)).toList()
          as T;
    }
    if (t == List<_i19.Order>) {
      return (data as List).map((e) => deserialize<_i19.Order>(e)).toList()
          as T;
    }
    if (t == List<_i20.Payment>) {
      return (data as List).map((e) => deserialize<_i20.Payment>(e)).toList()
          as T;
    }
    if (t == List<_i21.Product>) {
      return (data as List).map((e) => deserialize<_i21.Product>(e)).toList()
          as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.AppUser) {
      return 'AppUser';
    }
    if (data is _i3.Category) {
      return 'Category';
    }
    if (data is _i4.Currency) {
      return 'Currency';
    }
    if (data is _i5.Greeting) {
      return 'Greeting';
    }
    if (data is _i6.ImageFile) {
      return 'ImageFile';
    }
    if (data is _i7.Order) {
      return 'Order';
    }
    if (data is _i8.OrderItem) {
      return 'OrderItem';
    }
    if (data is _i9.OrderStatus) {
      return 'OrderStatus';
    }
    if (data is _i10.Payment) {
      return 'Payment';
    }
    if (data is _i11.PaymentMethod) {
      return 'PaymentMethod';
    }
    if (data is _i12.PaymentStatus) {
      return 'PaymentStatus';
    }
    if (data is _i13.Product) {
      return 'Product';
    }
    if (data is _i14.Review) {
      return 'Review';
    }
    if (data is _i15.UserRole) {
      return 'UserRole';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'AppUser') {
      return deserialize<_i2.AppUser>(data['data']);
    }
    if (dataClassName == 'Category') {
      return deserialize<_i3.Category>(data['data']);
    }
    if (dataClassName == 'Currency') {
      return deserialize<_i4.Currency>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i5.Greeting>(data['data']);
    }
    if (dataClassName == 'ImageFile') {
      return deserialize<_i6.ImageFile>(data['data']);
    }
    if (dataClassName == 'Order') {
      return deserialize<_i7.Order>(data['data']);
    }
    if (dataClassName == 'OrderItem') {
      return deserialize<_i8.OrderItem>(data['data']);
    }
    if (dataClassName == 'OrderStatus') {
      return deserialize<_i9.OrderStatus>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i10.Payment>(data['data']);
    }
    if (dataClassName == 'PaymentMethod') {
      return deserialize<_i11.PaymentMethod>(data['data']);
    }
    if (dataClassName == 'PaymentStatus') {
      return deserialize<_i12.PaymentStatus>(data['data']);
    }
    if (dataClassName == 'Product') {
      return deserialize<_i13.Product>(data['data']);
    }
    if (dataClassName == 'Review') {
      return deserialize<_i14.Review>(data['data']);
    }
    if (dataClassName == 'UserRole') {
      return deserialize<_i15.UserRole>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
