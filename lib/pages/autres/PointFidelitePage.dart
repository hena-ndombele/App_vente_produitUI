import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';

class PointFidelitePage extends StatefulWidget {
  const PointFidelitePage({super.key});

  @override
  State<PointFidelitePage> createState() => _PointFidelitePageState();
}

class _PointFidelitePageState extends State<PointFidelitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Point de Fidelité',
          style: TextStyle(color: ColorPages.COLOR_BLANC),
        ),
        backgroundColor: ColorPages.COLOR_VERT,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                  "Maximiser vos points de fidélité en achetant nos produits, Maximiser vos points de fidélité en achetant nos produits ,Maximiser vos points de fidélité en achetant nos produits ,Maximiser vos points de fidélité en achetant nos produits équivalent à 0,2\$ "),
            ),
            Divider(
              height: 2,
            ),
            Container(
              child: Text("10 Achats=2\$=5.400 FC",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Divider(
              height: 2,
            ),
            Container(
              child: Text("20 Achats=4\$=10.800 FC",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Divider(
              height: 2,
            ),
            Container(
              child: Text("30 Achats=6\$=16.200 FC",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Divider(
              height: 2,
            ),
            Container(
              child: Text("40 Achats=8\$=21.600 FC",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Divider(
              height: 2,
            ),
            Container(
              child: Text(
                "50 Achats=10\$=27.000 FC",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              height: 2,
            ),

          ],
        ),
      ),
    );
  }
}
