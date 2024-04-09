import 'package:flutter/material.dart';
import 'package:zigida_app/pages/autres/PointFidelitePage.dart';
import 'package:zigida_app/utils/ColorPages.dart';
import 'package:zigida_app/pages/controllers/ItemBagController.dart';
import 'package:zigida_app/pages/controllers/ProduitController.dart';
import 'package:zigida_app/pages/details/DetailPage.dart';
import 'package:zigida_app/widgets/BottomNavBarWidget.dart';
import 'package:zigida_app/widgets/chip_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zigida_app/widgets/AjouterPanier.dart';
import 'package:zigida_app/widgets/CardWidget.dart';
import 'package:zigida_app/pages/panier/PanierPage.dart';
import '../autres/CarouselPage.dart';
import '../drawer/EntetePage.dart';
import '../drawer/ListePage.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(proudctNotifierProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    final itemBag = ref.watch(itemBagProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPages.COLOR_VERT,
        title: Image.asset(
          'images/logo1.png',
          width: 60,
        ),
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorPages.COLOR_VERT,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/logo1.png',
                    width: 89,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ZIGIDA EXPRESS',
                    style: TextStyle(
                      color: ColorPages.COLOR_BLANC,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Visiter le site web'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Faite nous un don'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Partager l'applis"),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Point de fidelité'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PointFidelitePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Faite nous un retour'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Termes & Condition'),
              onTap: () {
                Navigator.pop(context); // Ferme le Drawer
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CarouselPage(), //slide
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Rejoignez ces Marques.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset("images/logo1.png", width: 110, height: 100),
                    Image.asset("images/logo1.png", width: 110, height: 100),
                    Image.asset("images/logo1.png", width: 110, height: 100),
                    Image.asset("images/logo1.png", width: 110, height: 100),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Produits Locaux',
                      style: TextStyle(
                          color: ColorPages.COLOR_ROUGE,
                          fontWeight: FontWeight.bold)),
                  Text('Tout voir',
                      style: TextStyle(color: ColorPages.COLOR_ROUGE)),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                  padding: const EdgeInsets.all(4),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      CardWidget(productIndex: index),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Nos Légumes Fruits',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                  Text('Tout voir', style: TextStyle(color: Colors.red)),
                ],
              ),
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
      ),
    );
  }
}
