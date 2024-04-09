import '../models/ProduitListe.dart';
import '../models/ProduitModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifier extends StateNotifier<List<ProduitModel>> {
  ProductNotifier() : super(productItems);

  // isSelect Change State

  void isSelectItem(int pid, int index) {
    state = [
      for (final product in state)
        if (product.pid == pid)
          product.copyWith(isSelected: !state[index].isSelected)
        else
          product,
    ];
  }

  void incrementQty(int pid) {
    state = [
      for (final product in state)
        if (product.pid == pid)
          product.copyWith(qty: product.qty += 1)
        else
          product,
    ];
  }

  void decreaseQty(int pid) {
    state = [
      for (final product in state)
        if (product.pid == pid)
          product.copyWith(qty: product.qty -= 1)
        else
          product,
    ];
  }
}

final proudctNotifierProvider =
StateNotifierProvider<ProductNotifier, List<ProduitModel>>((ref) {
  return ProductNotifier();
});
