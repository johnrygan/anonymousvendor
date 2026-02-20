import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:anonymousvendor_flutter/features/productsfeature/data/productsRepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';


class ProductCard extends ConsumerWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync = ref.watch(allProductsProvider(product as int));

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          // Handle product tap details page (optional)
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            // ClipRRect(
            //   borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            //   child: Image.network(
            //
            //     height: 120,
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 4),
                  Text("Ksh ${product.price}", style: const TextStyle(fontSize: 14, color: Colors.green)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("${product.name} added to cart")),
                          );
                        },
                        child: const Text("Add To Cart"),
                      ),
                      // IconButton(
                      //   icon: Icon(
                      //     isFavorited ? Icons.favorite : Icons.favorite_border,
                      //     color: isFavorited ? Colors.red : Colors.grey,
                      //   ),
                      //   onPressed: () {
                      //     ref.read(favoritesProvider.notifier).update((state) {
                      //       return isFavorited
                      //           ? state.where((id) => id != product.id).toList()
                      //           : [...state, product.id];
                      //     });
                      //   },
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
