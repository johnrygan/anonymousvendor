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
import 'dart:async' as _i2;
import 'package:anonymousvendor_client/src/protocol/appuser.dart' as _i3;
import 'package:anonymousvendor_client/src/protocol/category.dart' as _i4;
import 'package:anonymousvendor_client/src/protocol/greeting.dart' as _i5;
import 'package:anonymousvendor_client/src/protocol/imageFile.dart' as _i6;
import 'package:anonymousvendor_client/src/protocol/orderItem.dart' as _i7;
import 'package:anonymousvendor_client/src/protocol/order.dart' as _i8;
import 'package:anonymousvendor_client/src/protocol/payment.dart' as _i9;
import 'package:anonymousvendor_client/src/protocol/product.dart' as _i10;
import 'package:anonymousvendor_client/src/protocol/review.dart' as _i11;
import 'protocol.dart' as _i12;

/// {@category Endpoint}
class EndpointAppUser extends _i1.EndpointRef {
  EndpointAppUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'appUser';

  _i2.Future<_i3.AppUser?> createUser(_i3.AppUser user) =>
      caller.callServerEndpoint<_i3.AppUser?>(
        'appUser',
        'createUser',
        {'user': user},
      );

  _i2.Future<void> deleteUser(int appuserId) => caller.callServerEndpoint<void>(
        'appUser',
        'deleteUser',
        {'appuserId': appuserId},
      );

  _i2.Future<List<_i3.AppUser>> getAllUsers() =>
      caller.callServerEndpoint<List<_i3.AppUser>>(
        'appUser',
        'getAllUsers',
        {},
      );

  _i2.Future<String?> getUserRole(int appuserId) =>
      caller.callServerEndpoint<String?>(
        'appUser',
        'getUserRole',
        {'appuserId': appuserId},
      );

  _i2.Future<_i3.AppUser?> updateUser(_i3.AppUser appuser) =>
      caller.callServerEndpoint<_i3.AppUser?>(
        'appUser',
        'updateUser',
        {'appuser': appuser},
      );
}

/// {@category Endpoint}
class EndpointCategory extends _i1.EndpointRef {
  EndpointCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'category';

  _i2.Future<_i4.Category?> createCategory(
    _i4.Category category, {
    required int appuserId,
  }) =>
      caller.callServerEndpoint<_i4.Category?>(
        'category',
        'createCategory',
        {
          'category': category,
          'appuserId': appuserId,
        },
      );

  _i2.Future<_i4.Category?> deleteCategory(_i4.Category category) =>
      caller.callServerEndpoint<_i4.Category?>(
        'category',
        'deleteCategory',
        {'category': category},
      );

  _i2.Future<List<_i4.Category>> getAllCategories() =>
      caller.callServerEndpoint<List<_i4.Category>>(
        'category',
        'getAllCategories',
        {},
      );
}

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i1.EndpointRef {
  EndpointGreeting(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i2.Future<_i5.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i5.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointImage extends _i1.EndpointRef {
  EndpointImage(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'image';

  _i2.Future<_i6.ImageFile?> uploadImage(
    _i6.ImageFile image,
    String name,
    String path, {
    required int productId,
  }) =>
      caller.callServerEndpoint<_i6.ImageFile?>(
        'image',
        'uploadImage',
        {
          'image': image,
          'name': name,
          'path': path,
          'productId': productId,
        },
      );

  _i2.Future<String?> getUploadDescription(String path) =>
      caller.callServerEndpoint<String?>(
        'image',
        'getUploadDescription',
        {'path': path},
      );

  _i2.Future<_i6.ImageFile?> getImage(int imageFileId) =>
      caller.callServerEndpoint<_i6.ImageFile?>(
        'image',
        'getImage',
        {'imageFileId': imageFileId},
      );

  _i2.Future<List<_i6.ImageFile>> getAllImages() =>
      caller.callServerEndpoint<List<_i6.ImageFile>>(
        'image',
        'getAllImages',
        {},
      );

  _i2.Future<_i6.ImageFile?> deleteImage(int imageFileId) =>
      caller.callServerEndpoint<_i6.ImageFile?>(
        'image',
        'deleteImage',
        {'imageFileId': imageFileId},
      );

  _i2.Future<List<_i6.ImageFile>> getImageByProductId(int productId) =>
      caller.callServerEndpoint<List<_i6.ImageFile>>(
        'image',
        'getImageByProductId',
        {'productId': productId},
      );
}

/// {@category Endpoint}
class EndpointOrderItem extends _i1.EndpointRef {
  EndpointOrderItem(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'orderItem';

  _i2.Future<_i7.OrderItem?> createItem(
    _i7.OrderItem item, {
    required int orderId,
    required int productId,
  }) =>
      caller.callServerEndpoint<_i7.OrderItem?>(
        'orderItem',
        'createItem',
        {
          'item': item,
          'orderId': orderId,
          'productId': productId,
        },
      );

  _i2.Future<void> deleteItem(int itemId) => caller.callServerEndpoint<void>(
        'orderItem',
        'deleteItem',
        {'itemId': itemId},
      );
}

/// {@category Endpoint}
class EndpointOrder extends _i1.EndpointRef {
  EndpointOrder(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'order';

  _i2.Future<_i8.Order?> createOrder(
    _i8.Order order, {
    required int appuserId,
  }) =>
      caller.callServerEndpoint<_i8.Order?>(
        'order',
        'createOrder',
        {
          'order': order,
          'appuserId': appuserId,
        },
      );

  _i2.Future<List<_i8.Order>> getAllOrders() =>
      caller.callServerEndpoint<List<_i8.Order>>(
        'order',
        'getAllOrders',
        {},
      );

  _i2.Future<void> deleteOrder(int orderId) => caller.callServerEndpoint<void>(
        'order',
        'deleteOrder',
        {'orderId': orderId},
      );
}

/// {@category Endpoint}
class EndpointPayment extends _i1.EndpointRef {
  EndpointPayment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'payment';

  _i2.Future<_i9.Payment?> makePayment(
    _i9.Payment payment, {
    required int appuserId,
    required int orderId,
  }) =>
      caller.callServerEndpoint<_i9.Payment?>(
        'payment',
        'makePayment',
        {
          'payment': payment,
          'appuserId': appuserId,
          'orderId': orderId,
        },
      );

  _i2.Future<void> deletePayment(int paymentId) =>
      caller.callServerEndpoint<void>(
        'payment',
        'deletePayment',
        {'paymentId': paymentId},
      );

  _i2.Future<List<_i9.Payment>> getAllPayments() =>
      caller.callServerEndpoint<List<_i9.Payment>>(
        'payment',
        'getAllPayments',
        {},
      );
}

/// {@category Endpoint}
class EndpointProduct extends _i1.EndpointRef {
  EndpointProduct(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'product';

  _i2.Future<_i10.Product?> createProduct(
    _i10.Product product, {
    required int categoryId,
    required int appuserId,
  }) =>
      caller.callServerEndpoint<_i10.Product?>(
        'product',
        'createProduct',
        {
          'product': product,
          'categoryId': categoryId,
          'appuserId': appuserId,
        },
      );

  _i2.Future<void> deleteProduct(_i10.Product product) =>
      caller.callServerEndpoint<void>(
        'product',
        'deleteProduct',
        {'product': product},
      );

  _i2.Future<List<_i10.Product>> getProductsPaged({
    required int limit,
    required int offset,
  }) =>
      caller.callServerEndpoint<List<_i10.Product>>(
        'product',
        'getProductsPaged',
        {
          'limit': limit,
          'offset': offset,
        },
      );

  _i2.Future<List<_i10.Product>> getAllProducts() =>
      caller.callServerEndpoint<List<_i10.Product>>(
        'product',
        'getAllProducts',
        {},
      );

  _i2.Future<List<_i10.Product>> getProductsByCategory(int categoryId) =>
      caller.callServerEndpoint<List<_i10.Product>>(
        'product',
        'getProductsByCategory',
        {'categoryId': categoryId},
      );
}

/// {@category Endpoint}
class EndpointReviews extends _i1.EndpointRef {
  EndpointReviews(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'reviews';

  _i2.Future<_i11.Review?> createReview(
    _i11.Review review, {
    required int appuserId,
  }) =>
      caller.callServerEndpoint<_i11.Review?>(
        'reviews',
        'createReview',
        {
          'review': review,
          'appuserId': appuserId,
        },
      );

  _i2.Future<_i11.Review?> deleteReview(int reviewId) =>
      caller.callServerEndpoint<_i11.Review?>(
        'reviews',
        'deleteReview',
        {'reviewId': reviewId},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i12.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    appUser = EndpointAppUser(this);
    category = EndpointCategory(this);
    greeting = EndpointGreeting(this);
    image = EndpointImage(this);
    orderItem = EndpointOrderItem(this);
    order = EndpointOrder(this);
    payment = EndpointPayment(this);
    product = EndpointProduct(this);
    reviews = EndpointReviews(this);
  }

  late final EndpointAppUser appUser;

  late final EndpointCategory category;

  late final EndpointGreeting greeting;

  late final EndpointImage image;

  late final EndpointOrderItem orderItem;

  late final EndpointOrder order;

  late final EndpointPayment payment;

  late final EndpointProduct product;

  late final EndpointReviews reviews;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'appUser': appUser,
        'category': category,
        'greeting': greeting,
        'image': image,
        'orderItem': orderItem,
        'order': order,
        'payment': payment,
        'product': product,
        'reviews': reviews,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
