import 'package:serverpod/server.dart';
import 'package:anonymousvendor_server/src/generated/protocol.dart';
class CategoryEndpoint extends Endpoint {
  Future<Category?> createCategory(Session session, Category category,
      {required int appuserId}) async {
    try {
      final response = await session.db.transaction((transaction) async {
        AppUser? appuser = await AppUser.db.findById(
            session, appuserId, transaction: transaction);

        category = Category(name: category.name,
            description: category.description,
            createdAt: category.createdAt);
        category = await Category.db.insertRow(
            session, category, transaction: transaction);
        return category;
      });
      return response;
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }

  Future<Category?> deleteCategory(Session session, Category category) async {
    try {
      final result = await Category.db.deleteRow(session, category);
      return result;
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }

  Future<List<Category>> getAllCategories(Session session) async {
    try {
      final response = await session.db.transaction((transaction) async {
        return await Category.db.find(session, orderBy: (t) => t.id,);
      }
      );
      return response;
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
      return [];
    }
  }

}