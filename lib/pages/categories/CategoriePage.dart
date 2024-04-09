import 'package:flutter/material.dart';
import 'package:zigida_app/pages/categories/LegumeFruitPage.dart';
import 'package:zigida_app/pages/categories/ProduitLocauxPage.dart';
import 'package:zigida_app/pages/categories/VivreFraisPage.dart';
import 'package:zigida_app/utils/ColorPages.dart';
import 'package:zigida_app/utils/Routes.dart';

class CategoriePage extends StatefulWidget {
  const CategoriePage({super.key});

  @override
  State<CategoriePage> createState() => _CategoriePageState();
}

class _CategoriePageState extends State<CategoriePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              color: ColorPages.COLOR_VERT,
              margin: EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/logo1.png",
                              width: 60,
                            ),
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "Categories",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Schyler',
                                  color: ColorPages.COLOR_BLANC,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                "de Zigida Express",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Schyler',
                                  color: ColorPages.COLOR_BLANC,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text(
                    "Vivre Frais",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: ColorPages.COLOR_NOIR,
                    size: 20,
                  ),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VivreFraisPage()))
                  },
                ),
                ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text(
                    "Légumes Fruits",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: ColorPages.COLOR_NOIR,
                    size: 20,
                  ),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LegumeFruitPage()))
                  },
                ),
                ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text(
                    "Produit agro-alimentaire",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: ColorPages.COLOR_NOIR,
                    size: 20,
                  ),
                  onTap: () => {

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
