import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:anonymousvendor_flutter/features/productcategotyfeature/data/productCategoryRepo.dart';
import 'package:anonymousvendor_flutter/features/productsfeature/data/productsRepo.dart';
import 'package:anonymousvendor_flutter/features/productsfeature/presentation/widgets/productCardWidget.dart';
import 'package:anonymousvendor_flutter/features/widgets/categorywidget.dart';
import 'package:anonymousvendor_flutter/features/widgets/topbarwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class HomePage extends ConsumerWidget {
  HomePage({
    super.key,
    required this.title,
    this.categoryId,
  });

  final String title;
  final int? categoryId;

  final selectedProductProvider =
  StateProvider<Product?>((ref) => null);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCatId = ref.watch(selectedCategoryProvider);

    return Scaffold(
      appBar: const TopBarWidget(),

      body: Column(
        children: [
          /// 🔥 CATEGORY BAR
          const CategoryBar(),

          /// 🔥 PRODUCTS SECTION
          Expanded(
            child: selectedCatId == null
                ? const Center(child: Text("Select a category"))
                : ref.watch(productsByCategoryProvider(selectedCatId)).when(
              data: (products) => ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final item = products[index];

                  return InkWell(
                      onTap: () {
                        // 🔥 Save selected product
                        ref.read(selectedProductProvider.notifier).state = item;

                        // 🔥 OPTIONAL: Navigate to details page
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => const ProductDetailsPage(),
                        //   ),
                        // );
                      },
                  child:  ProductCard(product: item)) ;
                },
              ),
              error: (e, s) =>
                  Center(child: Text("Error: ${e.toString()}")),
              loading: () =>
              const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}



