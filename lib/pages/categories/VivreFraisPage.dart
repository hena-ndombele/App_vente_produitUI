import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zigida_app/utils/ColorPages.dart';
import 'package:zigida_app/pages/controllers/ProduitController.dart';
import '../../widgets/CardWidget.dart';
import '../controllers/ItemBagController.dart';
import '../demarrage/HomePage.dart';
import '../details/DetailPage.dart';
import '../panier/PanierPage.dart';


class VivreFraisPage extends ConsumerWidget {
  const VivreFraisPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final products = ref.watch(proudctNotifierProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    final itemBag = ref.watch(itemBagProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPages.COLOR_VERT,
        title: Text("Vivre Frais", style: TextStyle(color: ColorPages.COLOR_BLANC),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CardPage()));
              },
              icon: Badge(
                label: Text(itemBag.length.toString()),
                child:
                Icon(Icons.shopping_basket, color: ColorPages.COLOR_BLANC),
              ),
            ),
          ),
        ],
      ),
body: SingleChildScrollView(
        child: Column(
          children: [
            MasonryGridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              shrinkWrap: true,
              gridDelegate:
              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(getIndex: index),
                    )),
                child: SizedBox(
                  height: 270,
                  child: CardWidget(productIndex: index),
                ),
              ),
            ),
          ],
        ),
    ),
    );
  }
}
