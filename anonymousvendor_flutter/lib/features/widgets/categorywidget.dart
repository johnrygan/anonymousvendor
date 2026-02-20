import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../productcategotyfeature/data/productCategoryRepo.dart';

class CategoryBar extends ConsumerWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesProvider);
    final selectedId = ref.watch(selectedCategoryProvider);

    return categoriesAsync.when(
      data: (categories) => SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (_, i) {
            final cat = categories[i];
            final isSelected = cat.id == selectedId;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ChoiceChip(
                label: Text(cat.name),
                selected: isSelected,
                onSelected: (_) {
                  ref.read(selectedCategoryProvider.notifier).state = cat.id!;
                },
              ),
            );
          },
        ),
      ),
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => Text(e.toString()),
    );
  }
}
