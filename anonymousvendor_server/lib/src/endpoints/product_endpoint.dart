import 'package:anonymousvendor_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

import '../generated/product.dart';

class ProductEndpoint extends Endpoint {
  Future<Product?> createProduct(Session session, Product product,
      {required int categoryId, required int appuserId}) async {
    try {
      final response = await session.db.transaction((transaction) async {
        AppUser? user = await AppUser.db
            .findById(session, appuserId, transaction: transaction);
        Category? category = await Category.db
            .findById(session, categoryId, transaction: transaction);

        // manage relations
        await Product.db.attachRow
            .user(session, product, user!, transaction: transaction);
        await Product.db.attachRow
            .category(session, product, category!, transaction: transaction);

        final newproduct = Product(
            name: product.name,
            description: product.description,
            price: product.price,
            stock: product.stock,
            createdAt: product.createdAt,
            updatedAt: product.updatedAt);

        await Product.db.insertRow(session, product, transaction: transaction);
        return newproduct;
      });
      return response;
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }

  Future<void> deleteProduct(Session session, Product product) async {
    try {
      await Product.db.deleteRow(session, product);
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return;
  }

  Future<List<Product>> getProductsPaged(
    Session session, {
    required int limit,
    required int offset,
  }) async {
    try {
      return await Product.db.find(
        session,
        limit: limit,
        offset: offset,
        orderBy: (t) => t.id,
        orderDescending: true, // newest first
        include: Product.include(
          images: ImageFile.includeList(),
          user: AppUser.include(),
          category: Category.include(),
        ),
      );
    } catch (e, s) {
      print("Error fetching paged products: $e\n$s");
      return [];
    }
  }

  Future<List<Product>> getAllProducts(Session session) async {
    try {
      return await Product.db.find(
        session,
        include: Product.include(
          images: ImageFile.includeList(),
          user: AppUser.include(),
          category: Category.include(),
        ),
        orderBy: (t) => t.id,
      );
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
      return [];
    }
  }

  Future<List<Product>> getProductsByCategory(
    Session session,
    int categoryId,
  ) async {
    try {
      final products = await Product.db.find(
        session,
        where: (t) => t.categoryId.equals(categoryId),
        orderBy: (t) => t.createdAt,
        orderDescending: true,
      );

      return products;
    } catch (e) {
      throw Exception('Failed to fetch products by category: $e');
    }
  }
}
