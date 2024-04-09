import 'package:flutter/material.dart';
import 'package:zigida_app/pages/demarrage/HomePage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:zigida_app/utils/ColorPages.dart';
import 'package:zigida_app/pages/controllers/ProduitController.dart';

class DetailsPage extends ConsumerWidget {
  DetailsPage({super.key, required this.getIndex});

  int getIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);
    final product = ref.watch(proudctNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(product[getIndex].title, style: TextStyle(color: ColorPages.COLOR_ROUGE,fontWeight: FontWeight.bold),),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,

              child: Image.asset(product[getIndex].imgUrl),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product[getIndex].title,
                    style: TextStyle(color: ColorPages.COLOR_VERT, fontWeight: FontWeight.bold, fontSize: 20)
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Text('Livraison : ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      Text(
                         'CDF 9000',
                          style: TextStyle(color: ColorPages.COLOR_ROUGE, fontWeight: FontWeight.bold, fontSize: 17)
                      ),
                    ],
                  ),
                  const Gap(8),
                  Text(product[getIndex].longDescription),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CDF ${product[getIndex].price * product[getIndex].qty}',
                          style: TextStyle(color: ColorPages.COLOR_VERT,fontWeight: FontWeight.bold,fontSize: 18)
                      ),
                      Container(
                        child: Row(children: [
                          IconButton(
                            onPressed: () {
                              ref
                                  .read(proudctNotifierProvider.notifier)
                                  .decreaseQty(product[getIndex].pid);
                            },
                            icon: const Icon(
                              Icons.do_not_disturb_on_outlined,
                              size: 30,
                            ),
                          ),
                          Text(
                            product[getIndex].qty.toString(),
                              style: TextStyle(color: ColorPages.COLOR_ROUGE,fontWeight: FontWeight.bold)
                          ),
                          IconButton(
                              onPressed: () {
                                ref
                                    .read(proudctNotifierProvider.notifier)
                                    .incrementQty(product[getIndex].pid);
                              },
                              icon: const Icon(
                                Icons.add_circle_outline,
                                size: 30,
                              ))
                        ]),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPages.COLOR_NOIR,
                        minimumSize: const Size(double.infinity, 50)),
                    onPressed: () {},
                    child: const Text('Ajouter au panier',style: TextStyle(color: ColorPages.COLOR_BLANC),),
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
