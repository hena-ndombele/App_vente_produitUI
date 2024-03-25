import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';

import '../pages/notification/NotificationPage.dart';


class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 55,
        color: ColorPages.COLOR_BLANC,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.shopping_basket_outlined),
                  Text("Zigida"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_basket_outlined),
                  Text("Categories")
                ],
              ),
              Column(
                children: [Icon(Icons.search), Text("Recherche")],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_basket_outlined),
                  Text("Contact")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
