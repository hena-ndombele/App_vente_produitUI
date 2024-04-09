import 'package:flutter/material.dart';
import 'package:zigida_app/pages/controllers/ItemBagController.dart';
import 'package:zigida_app/pages/controllers/ProduitController.dart';
import 'package:zigida_app/pages/models/ProduitModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:zigida_app/utils/ColorPages.dart';

class CardWidget extends ConsumerWidget {
  const CardWidget({
    super.key,
    required this.productIndex,
  });

  final int productIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(proudctNotifierProvider);
    return Container(
      decoration: BoxDecoration(
        color: ColorPages.COLOR_BLANC,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2),
        ],
      ),
      margin: const EdgeInsets.all(9),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Image.asset(product[productIndex].imgUrl),
            ),
          ),
          const Gap(4),
          Container(

            padding: const EdgeInsets.symmetric(horizontal: 9),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                product[productIndex].title,
                style: TextStyle(color: ColorPages.COLOR_NOIR,fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                product[productIndex].shortDescription,
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CDF ${product[productIndex].price}',
                    style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        ref.read(proudctNotifierProvider.notifier).isSelectItem(
                            product[productIndex].pid, productIndex);

                        // Itemka ayuu ku darayaa baga
                        if (product[productIndex].isSelected == false) {
                          ref.read(itemBagProvider.notifier).addNewItemBag(
                            ProduitModel(
                                pid: product[productIndex].pid,
                                imgUrl: product[productIndex].imgUrl,
                                title: product[productIndex].title,
                                price: product[productIndex].price,
                                shortDescription:
                                product[productIndex].shortDescription,
                                longDescription:
                                product[productIndex].longDescription,
                                review: product[productIndex].review,
                                rating: product[productIndex].rating),
                          );
                        } else {
                          ref
                              .read(itemBagProvider.notifier)
                              .removeItem(product[productIndex].pid);
                        }
                      },
                      icon: Icon(
                        product[productIndex].isSelected
                            ? Icons.check_circle
                            : Icons.add_circle,
                        size: 26,
                      ))
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
