import 'package:anonymousvendor_client/anonymousvendor_client.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class CategoryRepo {
  final Client client;
  CategoryRepo({required this.client});


  Future<Category?> _createCategory(Category category, {required int appuserId}) async {
    try {

      final result = await client.category.createCategory(category, appuserId: appuserId);
      return result;

    } catch (e, s) {
        print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }

  Future<List<Category>> _getAllCategories() async{
    try{

      final result = await client.category.getAllCategories();
      return result;
    }catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return [];
  }

}

//selected category

final selectedCategoryProvider = StateProvider<int?>((ref) => null);
// category repo provider
final categoryRepositoryProvider = Provider<CategoryRepo>((ref){
  return CategoryRepo(client: Client('http://localhost:8080/'));
});
final categoriesProvider = FutureProvider<List<Category>>((ref) async {
  final repo = ref.watch(categoryRepositoryProvider);
  return repo._getAllCategories();
});







