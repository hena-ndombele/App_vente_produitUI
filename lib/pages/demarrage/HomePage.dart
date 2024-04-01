import 'package:flutter/material.dart';
import 'package:zigida_app/widgets/BottomNavBarWidget.dart';
import '../../utils/ColorPages.dart';
import '../autres/CarouselPage.dart';
import '../controllers/ProduitController.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPages.COLOR_VERT,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: ColorPages.COLOR_BLANC),
            ),
            Image.asset(
              'images/logo3.PNG',
              width: 60,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              label: Text("6"),
              child: Icon(Icons.shopping_basket, color: ColorPages.COLOR_BLANC),
            ),
          ),
        ],
      ),
      drawerEdgeDragWidth: 50,
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CarouselPage(),
              //nos marques
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
                    Image.asset("images/logo1.png", width: 100, height: 100),
                    Image.asset("images/logo1.png", width: 100, height: 100),
                    Image.asset("images/logo1.png", width: 100, height: 100),
                    Image.asset("images/logo1.png", width: 100, height: 100),
                  ],
                ),
              ),
              //produit local
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Produits locaux.",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                  ),
                ],
              ),
              Container(
                height: 280,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 6),
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(12),
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.5,
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: Image.asset("images/image1.jpg"),
                                )),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tomate Fresh",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                  Text("1KG",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("6000 FC",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add_circle,
                                            color: ColorPages.COLOR_VERT,
                                            size: 35,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Nos produits.",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Tout voir.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 280,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 6),
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(12),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.5,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      child: Image.asset("images/image1.jpg"),
                                    )),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        "Tomate Fresh",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                      Text("1KG",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("6000 FC",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add_circle,
                                                color: ColorPages.COLOR_VERT,
                                                size: 35,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 6),
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(12),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.5,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      child: Image.asset("images/image1.jpg"),
                                    )),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        "Tomate Fresh",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                      Text("1KG",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("6000 FC",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add_circle,
                                                color: ColorPages.COLOR_VERT,
                                                size: 35,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 6),
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(12),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.5,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      child: Image.asset("images/image1.jpg"),
                                    )),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        "Tomate Fresh",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                      Text("1KG",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("6000 FC",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add_circle,
                                                color: ColorPages.COLOR_VERT,
                                                size: 35,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 6),
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            margin: EdgeInsets.all(12),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.5,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      child: Image.asset("images/image1.jpg"),
                                    )),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        "Tomate Fresh",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                      Text("1KG",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("6000 FC",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add_circle,
                                                color: ColorPages.COLOR_VERT,
                                                size: 35,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorPages.COLOR_VERT,
        unselectedItemColor: ColorPages.COLOR_ROUGE,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_rounded),
              label: "Zigida",
              activeIcon: Icon(Icons.shopping_basket_rounded)),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Catégories",
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Recherche",
              activeIcon: Icon(Icons.search)),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Contact",
              activeIcon: Icon(Icons.home)),
        ],
      ),
    );
  }
}
