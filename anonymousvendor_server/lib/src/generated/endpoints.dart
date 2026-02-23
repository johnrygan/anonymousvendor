/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/appUser_endpoint.dart' as _i2;
import '../endpoints/category_endpoint.dart' as _i3;
import '../endpoints/greeting_endpoint.dart' as _i4;
import '../endpoints/imageUpload_endpoint.dart' as _i5;
import '../endpoints/orderItem_endpoint.dart' as _i6;
import '../endpoints/order_endpoint.dart' as _i7;
import '../endpoints/payment_endpoint.dart' as _i8;
import '../endpoints/product_endpoint.dart' as _i9;
import '../endpoints/reviews_endpoint.dart' as _i10;
import 'package:anonymousvendor_server/src/generated/appuser.dart' as _i11;
import 'package:anonymousvendor_server/src/generated/category.dart' as _i12;
import 'package:anonymousvendor_server/src/generated/imageFile.dart' as _i13;
import 'package:anonymousvendor_server/src/generated/orderItem.dart' as _i14;
import 'package:anonymousvendor_server/src/generated/order.dart' as _i15;
import 'package:anonymousvendor_server/src/generated/payment.dart' as _i16;
import 'package:anonymousvendor_server/src/generated/product.dart' as _i17;
import 'package:anonymousvendor_server/src/generated/review.dart' as _i18;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'appUser': _i2.AppUserEndpoint()
        ..initialize(
          server,
          'appUser',
          null,
        ),
      'category': _i3.CategoryEndpoint()
        ..initialize(
          server,
          'category',
          null,
        ),
      'greeting': _i4.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
      'image': _i5.ImageEndpoint()
        ..initialize(
          server,
          'image',
          null,
        ),
      'orderItem': _i6.OrderItemEndpoint()
        ..initialize(
          server,
          'orderItem',
          null,
        ),
      'order': _i7.OrderEndpoint()
        ..initialize(
          server,
          'order',
          null,
        ),
      'payment': _i8.PaymentEndpoint()
        ..initialize(
          server,
          'payment',
          null,
        ),
      'product': _i9.ProductEndpoint()
        ..initialize(
          server,
          'product',
          null,
        ),
      'reviews': _i10.ReviewsEndpoint()
        ..initialize(
          server,
          'reviews',
          null,
        ),
    };
    connectors['appUser'] = _i1.EndpointConnector(
      name: 'appUser',
      endpoint: endpoints['appUser']!,
      methodConnectors: {
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i11.AppUser>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['appUser'] as _i2.AppUserEndpoint).createUser(
            session,
            params['user'],
          ),
        ),
        'deleteUser': _i1.MethodConnector(
          name: 'deleteUser',
          params: {
            'appuserId': _i1.ParameterDescription(
              name: 'appuserId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['appUser'] as _i2.AppUserEndpoint).deleteUser(
            session,
            params['appuserId'],
          ),
        ),
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['appUser'] as _i2.AppUserEndpoint)
                  .getAllUsers(session),
        ),
        'getUserRole': _i1.MethodConnector(
          name: 'getUserRole',
          params: {
            'appuserId': _i1.ParameterDescription(
              name: 'appuserId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['appUser'] as _i2.AppUserEndpoint).getUserRole(
            session,
            params['appuserId'],
          ),
        ),
      },
    );
    connectors['category'] = _i1.EndpointConnector(
      name: 'category',
      endpoint: endpoints['category']!,
      methodConnectors: {
        'createCategory': _i1.MethodConnector(
          name: 'createCategory',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i12.Category>(),
              nullable: false,
            ),
            'appuserId': _i1.ParameterDescription(
              name: 'appuserId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['category'] as _i3.CategoryEndpoint).createCategory(
            session,
            params['category'],
            appuserId: params['appuserId'],
          ),
        ),
        'deleteCategory': _i1.MethodConnector(
          name: 'deleteCategory',
          params: {
            'category': _i1.ParameterDescription(
              name: 'category',
              type: _i1.getType<_i12.Category>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['category'] as _i3.CategoryEndpoint).deleteCategory(
            session,
            params['category'],
          ),
        ),
        'getAllCategories': _i1.MethodConnector(
          name: 'getAllCategories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['category'] as _i3.CategoryEndpoint)
                  .getAllCategories(session),
        ),
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['greeting'] as _i4.GreetingEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['image'] = _i1.EndpointConnector(
      name: 'image',
      endpoint: endpoints['image']!,
      methodConnectors: {
        'uploadImage': _i1.MethodConnector(
          name: 'uploadImage',
          params: {
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<_i13.ImageFile>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'productId': _i1.ParameterDescription(
              name: 'productId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['image'] as _i5.ImageEndpoint).uploadImage(
            session,
            params['image'],
            params['name'],
            params['path'],
            productId: params['productId'],
          ),
        ),
        'getUploadDescription': _i1.MethodConnector(
          name: 'getUploadDescription',
          params: {
            'path': _i1.ParameterDescription(
              name: 'path',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['image'] as _i5.ImageEndpoint).getUploadDescription(
            session,
            params['path'],
          ),
        ),
        'getImage': _i1.MethodConnector(
          name: 'getImage',
          params: {
            'imageFileId': _i1.ParameterDescription(
              name: 'imageFileId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['image'] as _i5.ImageEndpoint).getImage(
            session,
            params['imageFileId'],
          ),
        ),
        'getAllImages': _i1.MethodConnector(
          name: 'getAllImages',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['image'] as _i5.ImageEndpoint).getAllImages(session),
        ),
        'deleteImage': _i1.MethodConnector(
          name: 'deleteImage',
          params: {
            'imageFileId': _i1.ParameterDescription(
              name: 'imageFileId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['image'] as _i5.ImageEndpoint).deleteImage(
            session,
            params['imageFileId'],
          ),
        ),
        'getImageByProductId': _i1.MethodConnector(
          name: 'getImageByProductId',
          params: {
            'productId': _i1.ParameterDescription(
              name: 'productId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['image'] as _i5.ImageEndpoint).getImageByProductId(
            session,
            params['productId'],
          ),
        ),
      },
    );
    connectors['orderItem'] = _i1.EndpointConnector(
      name: 'orderItem',
      endpoint: endpoints['orderItem']!,
      methodConnectors: {
        'createItem': _i1.MethodConnector(
          name: 'createItem',
          params: {
            'item': _i1.ParameterDescription(
              name: 'item',
              type: _i1.getType<_i14.OrderItem>(),
              nullable: false,
            ),
            'orderId': _i1.ParameterDescription(
              name: 'orderId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'productId': _i1.ParameterDescription(
              name: 'productId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['orderItem'] as _i6.OrderItemEndpoint).createItem(
            session,
            params['item'],
            orderId: params['orderId'],
            productId: params['productId'],
          ),
        ),
        'deleteItem': _i1.MethodConnector(
          name: 'deleteItem',
          params: {
            'itemId': _i1.ParameterDescription(
              name: 'itemId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['orderItem'] as _i6.OrderItemEndpoint).deleteItem(
            session,
            params['itemId'],
          ),
        ),
      },
    );
    connectors['order'] = _i1.EndpointConnector(
      name: 'order',
      endpoint: endpoints['order']!,
      methodConnectors: {
        'createOrder': _i1.MethodConnector(
          name: 'createOrder',
          params: {
            'order': _i1.ParameterDescription(
              name: 'order',
              type: _i1.getType<_i15.Order>(),
              nullable: false,
            ),
            'appuserId': _i1.ParameterDescription(
              name: 'appuserId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['order'] as _i7.OrderEndpoint).createOrder(
            session,
            params['order'],
            appuserId: params['appuserId'],
          ),
        ),
        'getAllOrders': _i1.MethodConnector(
          name: 'getAllOrders',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['order'] as _i7.OrderEndpoint).getAllOrders(session),
        ),
        'deleteOrder': _i1.MethodConnector(
          name: 'deleteOrder',
          params: {
            'orderId': _i1.ParameterDescription(
              name: 'orderId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['order'] as _i7.OrderEndpoint).deleteOrder(
            session,
            params['orderId'],
          ),
        ),
      },
    );
    connectors['payment'] = _i1.EndpointConnector(
      name: 'payment',
      endpoint: endpoints['payment']!,
      methodConnectors: {
        'makePayment': _i1.MethodConnector(
          name: 'makePayment',
          params: {
            'payment': _i1.ParameterDescription(
              name: 'payment',
              type: _i1.getType<_i16.Payment>(),
              nullable: false,
            ),
            'appuserId': _i1.ParameterDescription(
              name: 'appuserId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'orderId': _i1.ParameterDescription(
              name: 'orderId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['payment'] as _i8.PaymentEndpoint).makePayment(
            session,
            params['payment'],
            appuserId: params['appuserId'],
            orderId: params['orderId'],
          ),
        ),
        'deletePayment': _i1.MethodConnector(
          name: 'deletePayment',
          params: {
            'paymentId': _i1.ParameterDescription(
              name: 'paymentId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['payment'] as _i8.PaymentEndpoint).deletePayment(
            session,
            params['paymentId'],
          ),
        ),
        'getAllPayments': _i1.MethodConnector(
          name: 'getAllPayments',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['payment'] as _i8.PaymentEndpoint)
                  .getAllPayments(session),
        ),
      },
    );
    connectors['product'] = _i1.EndpointConnector(
      name: 'product',
      endpoint: endpoints['product']!,
      methodConnectors: {
        'createProduct': _i1.MethodConnector(
          name: 'createProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i17.Product>(),
              nullable: false,
            ),
            'categoryId': _i1.ParameterDescription(
              name: 'categoryId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'appuserId': _i1.ParameterDescription(
              name: 'appuserId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['product'] as _i9.ProductEndpoint).createProduct(
            session,
            params['product'],
            categoryId: params['categoryId'],
            appuserId: params['appuserId'],
          ),
        ),
        'deleteProduct': _i1.MethodConnector(
          name: 'deleteProduct',
          params: {
            'product': _i1.ParameterDescription(
              name: 'product',
              type: _i1.getType<_i17.Product>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['product'] as _i9.ProductEndpoint).deleteProduct(
            session,
            params['product'],
          ),
        ),
        'getProductsPaged': _i1.MethodConnector(
          name: 'getProductsPaged',
          params: {
            'limit': _i1.ParameterDescription(
              name: 'limit',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'offset': _i1.ParameterDescription(
              name: 'offset',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['product'] as _i9.ProductEndpoint).getProductsPaged(
            session,
            limit: params['limit'],
            offset: params['offset'],
          ),
        ),
        'getAllProducts': _i1.MethodConnector(
          name: 'getAllProducts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['product'] as _i9.ProductEndpoint)
                  .getAllProducts(session),
        ),
        'getProductsByCategory': _i1.MethodConnector(
          name: 'getProductsByCategory',
          params: {
            'categoryId': _i1.ParameterDescription(
              name: 'categoryId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['product'] as _i9.ProductEndpoint)
                  .getProductsByCategory(
            session,
            params['categoryId'],
          ),
        ),
      },
    );
    connectors['reviews'] = _i1.EndpointConnector(
      name: 'reviews',
      endpoint: endpoints['reviews']!,
      methodConnectors: {
        'createReview': _i1.MethodConnector(
          name: 'createReview',
          params: {
            'review': _i1.ParameterDescription(
              name: 'review',
              type: _i1.getType<_i18.Review>(),
              nullable: false,
            ),
            'appuserId': _i1.ParameterDescription(
              name: 'appuserId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['reviews'] as _i10.ReviewsEndpoint).createReview(
            session,
            params['review'],
            appuserId: params['appuserId'],
          ),
        ),
        'deleteReview': _i1.MethodConnector(
          name: 'deleteReview',
          params: {
            'reviewId': _i1.ParameterDescription(
              name: 'reviewId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['reviews'] as _i10.ReviewsEndpoint).deleteReview(
            session,
            params['reviewId'],
          ),
        ),
      },
    );
  }
}
