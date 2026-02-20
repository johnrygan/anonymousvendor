import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:anonymousvendor_flutter/features/productsfeature/data/productsRepo.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../main.dart';
import 'productsRepo.dart';

class ProductsRepo {
  final Client client;
  ProductsRepo({required this.client});

  Future<Product?> _createProducts(Product product, {required int categoryId, required int appuserId} ) async {
    try{
      final result = await client.product.createProduct(product, categoryId: categoryId, appuserId: appuserId);
      return result;
    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return null;
  }

  Future<Product?> _deleteProduct(Product product, ) async{
    try{
      final result = await client.product.deleteProduct(product);
      return null;
    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return null;
  }
  // Get products paged
  Future<List<Product>> getPagedProducts({required int page, int limit = 10}) async {
    try {
      final offset = page * limit;
      return await client.product.getProductsPaged(limit: limit, offset: offset);
    } catch (e, s) {
      if (kDebugMode) print("Error fetching paged products: $e\n$s");
      return [];
    }
  }

  Future<List<Product>>getProductByCategory(int categoryId) async{
    try{

      final result  = await client.product.getProductsByCategory(categoryId);
      return result;

    }catch(e,s){
      print ("Error ${e.toString()}, ${s.toString()}");
    }
    return [];
  }

  Future<List<Product?>> _getAllProducts(Product product) async{
    try{
      final result = await client.product.getAllProducts();
      return result;

    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return [];
  }
}

final productRepositoryProvider = Provider<ProductsRepo>((ref){
  return ProductsRepo(client: Client('http://localhost:8080/'));
});

final allProductsProvider = FutureProvider.family<List<Product?>, int>((ref, product) async {
  try{
    return await ref.read(productRepositoryProvider)._getAllProducts(product as Product);

  }catch (e,s){
    if (kDebugMode) {
      print('Error ${e.toString()}, ${s.toString()}');
    }
  }
  return [];
});
// Current page
final pageProvider = StateProvider<int>((ref) => 0);

// Paged products provider
final pagedProductsProvider = FutureProvider<List<Product?> >((ref) async {
  try{
    final page = ref.watch(pageProvider);
    final repo = ref.read(productRepositoryProvider);
    return repo.getPagedProducts(page: page);

  }catch (e,s){
    if (kDebugMode) {
      print('Error ${e.toString()}, ${s.toString()}');
    }
    return [];
  }
});
final productsByCategoryProvider =
FutureProvider.family<List<Product>, int>((ref, categoryId) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getProductByCategory(categoryId);
});
