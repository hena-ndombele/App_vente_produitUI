import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tomate"),
        leading: BackButton(),
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            // Ajoutez le code de votre action pour l'icône de notification
            icon: Badge(
                label: Text("6"),
                child:
                    Icon(Icons.shopping_basket, color: ColorPages.COLOR_NOIR)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.height,
                          child: Image.asset("images/image1.jpg")),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tomate Fresh",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "6000 FC",
                                    style: TextStyle(
                                      fontSize: 19,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.do_not_disturb_on,
                                              size: 30,
                                            )),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add_circle,
                                                size: 30)),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Détails: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("1KG = 6000 FC"),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("1KG = 6000 FC"),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("1KG = 6000 FC"),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("1KG = 6000 FC"),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("1KG = 6000 FC"),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("1KG = 6000 FC"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        spreadRadius: 2)
                                  ]),
                              child: Icon(
                                Icons.email,
                                size: 30,
                                color: Color(0XFF146ABE),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        spreadRadius: 2)
                                  ]),
                              child: Icon(
                                Icons.phone,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        spreadRadius: 2)
                                  ]),
                              child: Icon(
                                Icons.whatshot,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
