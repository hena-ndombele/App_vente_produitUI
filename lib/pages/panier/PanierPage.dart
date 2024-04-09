import 'package:flutter/material.dart';
import 'package:zigida_app/pages/autres/PointFidelitePage.dart';
import 'package:zigida_app/pages/controllers/ItemBagController.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:zigida_app/utils/ColorPages.dart';

import '../demarrage/HomePage.dart';

class CardPage extends ConsumerWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemBag = ref.watch(itemBagProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPages.COLOR_VERT,
        title: const Text(
          'Mon Panier (0)',
          style: TextStyle(color: ColorPages.COLOR_BLANC),
        ),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: itemBag.length,
              itemBuilder: (context, index) => Card(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Row(children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(itemBag[index].imgUrl),
                    ),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(itemBag[index].title,
                                  style: TextStyle(
                                      color: ColorPages.COLOR_NOIR,
                                      fontWeight: FontWeight.bold)),
                              const Gap(6),
                              Text(itemBag[index].shortDescription,
                                  style:
                                      TextStyle(color: ColorPages.COLOR_ROUGE)),
                              const Gap(4),
                              Text(
                                'CDF ${itemBag[index].price}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorPages.COLOR_ROUGE),
                              )
                            ],
                          ),
                        ))
                  ]),
                ),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '2024',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'Point de Fidelité',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Gap(5),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PointFidelitePage()));
                                },
                                icon:
                                    Icon(Icons.check_circle, color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Livraison:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'CDF 9000',
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorPages.COLOR_GRIS),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Produit:',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'CDF ${ref.watch(priceCalcProvider)}',
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Prix Total:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorPages.COLOR_VERT),
                      ),
                      Text(
                        'CDF ${ref.watch(priceCalcProvider) + 9000}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorPages.COLOR_VERT),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Passer la commande")),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
