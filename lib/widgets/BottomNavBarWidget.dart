import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';

import '../pages/categories/CategoriePage.dart';
import '../pages/contact/ContactPage.dart';
import '../pages/demarrage/HomePage.dart';
import '../pages/recherche/RecherchePage.dart';



class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    CategoriePage(),
    RecherchePage(),
    ContactPage(),
  ];
  PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorPages.COLOR_VERT,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: ColorPages.COLOR_GRIS,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 100),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: "Zigida",
            activeIcon: Icon(Icons.shopping_basket_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: "Catégories",
            activeIcon: Icon(Icons.dashboard_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Recherche",
            activeIcon: Icon(Icons.search_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Contact",
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }}
