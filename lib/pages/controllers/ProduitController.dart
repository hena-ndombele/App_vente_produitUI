

import 'package:riverpod/riverpod.dart';
import 'package:zigida_app/pages/models/ProduitListe.dart';
import 'package:zigida_app/pages/models/ProduitModel.dart';

class ProduitController extends StateNotifier<List<ProduitModel>>{
  ProduitController(): super(produitItem);


}

final produitNotifierProvider=StateNotifierProvider<ProduitController, List<ProduitModel>>((ref){
  return ProduitController();
});