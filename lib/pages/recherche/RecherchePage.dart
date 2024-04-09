import 'package:flutter/material.dart';

import '../../utils/ColorPages.dart';

class RecherchePage extends StatefulWidget {
  const RecherchePage({super.key});

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPages.COLOR_VERT,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'images/logo1.png',
              width: 60,
            ),
            Text("Recherche",style: TextStyle(color:ColorPages.COLOR_BLANC),)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon:
                Icon(Icons.search, color: ColorPages.COLOR_BLANC),
              ),
            ),

        ],
      ),
    );
  }
}
