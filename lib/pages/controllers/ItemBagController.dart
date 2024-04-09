import 'package:zigida_app/pages/models/ProduitModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<ProduitModel> itemBag = [];

class ItemBagNotifier extends StateNotifier<List<ProduitModel>> {
  ItemBagNotifier() : super(itemBag);

  // Add new item

  void addNewItemBag(ProduitModel productModel) {
    state = [...state, productModel];
  }

  // Remove item

  void removeItem(int pid) {
    state = [
      for (final product in state)
        if (product.pid != pid) product,
    ];
  }
}

final itemBagProvider =
StateNotifierProvider<ItemBagNotifier, List<ProduitModel>>((ref) {
  return ItemBagNotifier();
});

final priceCalcProvider = StateProvider<double>((ref) {
  final itemBag = ref.watch(itemBagProvider);

  double sum = 0;
  for (var element in itemBag) {
    sum += element.price;
  }
  return sum;
});


